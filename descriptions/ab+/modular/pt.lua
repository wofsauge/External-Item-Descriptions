-- This file contains text elements that are used for the modular description system.
local languageCode = "pt"

-- Flag to disable modular description behavior for the whole language
-- Added to not mess to much with preexisting translations, before a translator looked
-- over the modular description strings. Remove variable to enable it again.
EID.descriptions[languageCode].DisableModularDescriptions = true

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Multiplicador de Lágrimas",
    Tears = "{value} Lágrimas",
    TearHeight = "{value} Altura da Lágrima",
    TearSizeMultiplier = "{value} Multiplicador de Tamanho da Lágrima",
    TearSize = "{value} Tamanho da Lágrima",
    TearDelayMultiplier = "{value} Multiplicador de Atraso da Lágrima",
    TearDelay = "{value} Atraso da Lágrima",
    FireRateMultiplier = "{value} Multiplicador da Taxa de Disparo",
    FireRate = "{value} Taxa de Disparo",
    DamageMultiplier = "{value} Multiplicador de Dano",
    Damage = "{value} Dano",
	DamageTemp = "{value} Dano (temporário)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Dano de Bomba",
    Speed = "{value} Velocidade",
    RangeMultiplier = "{value} Multiplicador de Alcance",
    Range = "{value} Alcance",
    Luck = "{value} Sorte",
    ShotSpeedMultiplier = "{value} Multiplicador de Velocidade de Disparo",
    ShotSpeed = "{value} Velocidade de Disparo",
    Life = "{value} Vida",
    SizeUp = "Aumenta o tamanho",
    SizeDown = "Diminui o tamanho",
    Flight = "Voo",
    Invincibility = "Invencibilidade",
    RandomStatUp = "↑ Aumenta {value} estatística aleatória",
    RandomStatDown = "↓ Diminui {value} estatística aleatória",

    -- Health related
    RedHeart = "{value} Saúde",
    SoulHeart = "{value} Coração de Alma",
    BlackHeart = "{value} Coração Negro",
    BoneHeart = "{value} Coração de Osso",
    EternalHeart = "{value} Coração Eterno",
    GoldenHeart = "{value} Coração Dourado",
    RottenHeart = "{value} Coração Podre",
    BrokenHeart = "{value} Coração Partido",
    EmptyHeart = "{value} Contêiner de Coração Vazio",
    FullHealth = "Saúde cheia",
    HealingRed = "Cura {value} Coração",
    CoinHeart = "{value} Coração de Moeda",
    EmptyCoinHeart = "{value} Contêiner de Coração de Moeda Vazio",
    HealingCoin = "Cura {value} moeda",

    -- Room chances
    AngelDevilChance = "{value}% Chance de Sala do Diabo/Anjo",
    DevilChance = "{value}% Chance de Sala do Diabo",
    AngelChance = "{value}% Chance de Sala do Anjo",
    PlanetariumChance = "{value}% Chance de Planetário",

    -- Pickups / Spawns
    Coin = "{value} Moeda",
    Bomb = "{value} Bomba",
    Key = "{value} Chave",
    CoinBombKey = "{value} {{Coin}} moeda, {{Bomb}} bomba e {{Key}} chave",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Gera {value} pickup aleatório",
        RandomTrinket = "Gera {value} trinket aleatório",
        RandomHeart = "Gera {value} coração aleatório",
        RedHeart = "Gera {value} Coração Vermelho",
        SoulHeart = "Gera {value} Coração de Alma",
        BlackHeart = "Gera {value} Coração Negro",
        BoneHeart = "Gera {value} Coração de Osso",
        Bomb = "Gera {value} bomba",
        Key = "Gera {value} chave",
        Coin = "Gera {value} moeda",
        RandomCoin = "Gera {value} moeda aleatória",
        Card = "Gera {value} carta",
        Pill = "Gera {value} pílula",
        Rune = "Gera {value} runa",
        Battery = "Gera {value} bateria",
        BlueFly = "Gera {value} mosca azul",
        BlueSpider = "Gera {value} aranha azul",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Lágrimas teleguiadas",
        Spectral = "Lágrimas espectrais",
        Piercing = "Lágrimas que atravessam inimigos",
        Poison = "{{Poison}} Lágrimas venenosas",
    },
    -- Familiars
    FlyOrbital = "{value} Mosca orbital",
    Orbital = "Orbital",
    BlockProjectiles = "Bloqueia projéteis inimigos",
    DamagePerTear = "Causa {value} de dano por lágrima",
    DamagePerShot = "Causa {value} de dano por disparo",
    DamagePerSecond = "Causa {value} de dano por segundo",
    ContactDamagePerSecond = "Causa {value} de dano ao contato por segundo",
    MimicMovement = "Espelha o movimento do personagem com atraso de {value} segundos",
    -- Player
    CantShoot = "O personagem não pode atirar",
    PlayerContactDamage = "O personagem causa {value} de dano ao contato por segundo",
    DamageToAllEnemies = "Causa {value} de dano a todos os inimigos",
    -- Misc
    LeftEye = "Recebe no olho esquerdo:",
    RightEye = "Recebe no olho direito:",
    RoomEffect = "{{Timer}} Recebe para a sala:",
    TimedEffect = "{{Timer}} Recebe por {value} segundos:",
    OnUseEffect = "Ao usar:",
    HeldEffect = "Enquanto segurar:",
    MaxLuck = "{{Luck}} Máx.({max}%) com {value} de Sorte",
    SingleUseInfo = "{{Warning}} USO ÚNICO {{Warning}}",
    NoEffect = "Sem efeito",
    FullMapping = {
        BaseDesc = "{{Timer}} Efeito de mapeamento completo para o andar {exception}",
        Exception = "(exceto {{SuperSecretRoom}} Sala Super Secreta)"
    }
}

-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

EID.descriptions[languageCode].AdditionalInformations = {}

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ +1 de altura de ruptura", -- My Reflection
	-- Full old Desc: "Dá às lágrimas um efeito bumerangue# ↑ +1,5 Alcance Up#↑ +0,6 velocidade de tiro #↑ +1 de altura de ruptura"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Lágrima normal familiar", -- Brother Bobby
	-- Full old Desc: "Lágrima normal familiar"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Todos os inimigos mosca são amigáveis", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Reaparecer com saúde total", -- 1up!
	-- Full old Desc: "↑ +1 vida#Reaparecer com saúde total"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "Inimigos podem derrubar corações negros se envenenados", -- The Virus
	-- Full old Desc: "Toque venenoso#↓ -0.1 Velocidade Down#Inimigos podem derrubar corações negros se envenenados"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Reveils todos os ícones no mapa#Não mostra o layout do mapa", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Voo para o quarto atual#Mata o pé da mãe e o coração da mãe instantaneamente#!!! Mata VOCÊ quando usado em Satanás", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Solte um cocô no chão#Pode ser colocado próximo a um poço e destruído para fazer uma ponte", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Dispara 10 lágrimas em um círculo ao redor de Isaac", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Congele todos os inimigos na sala atual por 4 s", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Causa uma explosão no local dos jogadores", -- Kamikaze!
	-- Full old Desc: "Causa uma explosão no local dos jogadores"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "causa medo a todos os inimigos na sala por 5 segundos.", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Bomba venenosa jogável", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Teleporta Isaac para uma sala aleatória", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "Aumenta a chance de ganhar o Jogo do Mendigo", -- Lucky Foot
	-- Full old Desc: "↑ +1.0 Sorte Up#Aumenta a chance de ganhar o Jogo do Mendigo"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "Feto épico sob demanda!#ataques aéreos controláveis", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Dispara um laser da boca de Isaac", -- Shoop da Whoop!
	-- Full old Desc: "Dispara um laser da boca de Isaac"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 53] = "Puxa pickups em direção ao jogador", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Revela o layout do piso", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Derrama uma poça de limonada", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "mosca Orbital de média distância", -- Distant Admiration
	-- Full old Desc: "mosca Orbital de média distância"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Caminhe por pequenas lacunas", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "Cura meio coração a cada 13 inimigos mortos", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Agora, os itens da barra de espaço podem ser carregados duas vezes", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "-50% em itens de loja#conseguir dois fará tudo de graça", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Crie 6 bombas trolls em locais aleatórios na sala", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "Diminua a velocidade dos inimigos por 8 segundos", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Lágrima normal familiar", -- Sister Maggy
	-- Full old Desc: "Lágrima normal familiar"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Lágrimas agora são lasers", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "Lágrimas carregadas", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 73] = "LVL1: Orbital#LVL2: Tiro orbital#LVL3: Meat boy LVL 1#LVL4: Meat boy LVL 2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 76] = "Revela salas secretas", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "↑ +17.5% oportunidade de negócio com o diabo", -- Book of Revelations
	-- Full old Desc: "+1 Coração de alma#Maior chance de cavaleiros#↑ +17.5% oportunidade de negócio com o diabo"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Respawn com 1 Coração", -- Dead Cat
	-- Full old Desc: "↑ +9 vidas#Respawn com 1 Coração"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "+1 Coração de alma#↑ +0.7 Dano up#↓ -0.18 Velocidade down#Quebrar pedras"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Cria um alçapão para pular o andar#10% chance de alçapão crawlspace", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Evocar Monstro por um pisão", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Um familiar que avança e causa dano de toque", -- Little Chubby
	-- Full old Desc: "Um familiar que avança e causa dano de toque"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Revela o que há atrás das portas", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "Invencibilidade + dano de contato#Transforma o personagem em uma criatura semelhante ao Pac-Man por 5 segundos#Cura meio coração vermelho para cada dois inimigos mortos."
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "Dropa moedas aleatórias a cada 2 quartos", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Lágrimas de laser", -- Robo-Baby
	-- Full old Desc: "Lágrimas de laser"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "Dropa meio coração a cada 3 quartos", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "reduzir a velocidade das lágrimas", -- Little Gish
	-- Full old Desc: "reduzir a velocidade das lágrimas"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Lágrimas Teleguiadas", -- Little Steven
	-- Full old Desc: "Lágrimas Teleguiadas"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Lágrimas dividir em contato", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Rolar novamente os pedestais na sala atual", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Voar#Seu corpo ataca os inimigos"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Todo dano recebido é reduzido para meio coração", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ +0.04 Dano Up para cada moeda que você tem", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "Peido veneno", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Acelera todos os orbitais", -- Guardian Angel
	-- Full old Desc: "Orbital#Acelera todos os orbitais"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Torre de disparo automático", -- Demon Baby
	-- Full old Desc: "Torre de disparo automático"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Faca controlável", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "Reduz a carga de qualquer item ativado em 1#Todos os 1 itens de cobrança têm recargas cronometradas", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Spawna um pássaro quando você é atingido", -- Dead Bird
	-- Full old Desc: "Spawna um pássaro quando você é atingido"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "!!! Quando estiver com meio coração ou menos:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "!!! Quando estiver com meio coração ou menos:#↑ +1.5 Dano up#↑ +0.3 Velocidade up"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Familiar aleatório para a sala atual", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Efeito aleatório do item ativo", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "+5 Bombas", -- Bobby-Bomb
	-- Full old Desc: "Bombas Teleguiadas#+5 Bombas"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ +1.2 Dano up#↓ -1 Saúde down", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Rolar novamente o andar inteiro", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Mosca orbital", -- Forever Alone
	-- Full old Desc: "Mosca orbital#Tão distante"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Concede o voo enquanto estiver em espera#Arrancada em uma direção", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "Dropa 1 bomba a cada 2 quartos", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "Mais danos com base na distância percorrida da lágrima", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "!!! Converter:#1 Coração vermelho em 3 Corações de alma", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "Mais baús aparecem", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Banco de sangue portátil#Metade de um coração = 1 Moeda", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Chamariz Explosivo#Atrai inimigos", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "+5 bombas", -- Remote Detonator
	-- Full old Desc: "Detonar bombas sob demanda#+5 bombas"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "Agora você pode segurar 2 trinkets", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "+5 bombas", -- Bob's Curse
	-- Full old Desc: "Bombas venenosas#+5 bombas"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "Quando danificado até meio coração, você ganha 1 Coração de alma#(Uma vez por quarto)", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "Converte moedas em Pick-ups", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Quebrar pedras na sala atual", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "1/6 chance de gerar uma mosca quando lágrimas atingem um inimigo", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 155] = "Flutua pela sala", -- The Peeper
	-- Full old Desc: "Flutua pela sala#Causa dano de contato"
	-- English: "Floats around the room"

	[C_ID .. 156] = "+1 Carregue quando for atingido", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ Dano up quando você é atingido#Dura todo o andar", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Revelar mapa completo#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Revelar mapa completo#Dropa carta aleatória ou coração de alma"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Raios de luz do céu!", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "Respawna os ??? (Blue Baby)", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Lágrimas espectrais para familiares", -- Ghost Baby
	-- Full old Desc: "Lágrimas espectrais para familiares"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Spawna um fogo azul", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Rola novamente todos os pickup na sala atual.", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Atira duas lágrimas em um padrão em forma de V", -- Harlequin Baby
	-- Full old Desc: "Atira duas lágrimas em um padrão em forma de V"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Ataque aéreo controlável em vez de lágrimas", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Pisa nos inimigos", -- Daddy Longlegs
	-- Full old Desc: "Pisa nos inimigos"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Retarda os inimigos", -- Spider Butt
	-- Full old Desc: "Retarda os inimigos#Danifica todos os inimigos"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Atira lágrimas aleatórias", -- Rainbow Baby
	-- Full old Desc: "Atira lágrimas aleatórias"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Abre todas as portas na sala atual, incluindo salas secretas", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Caça niquel portátio", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Deixa uma poça quando você é atingido", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Peidar quando tocado", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Concede o voo enquanto espera#Arrancada Sagrada", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "Bola de cabelo crescente#Balanços ao seu redor#Cresce quando mata um inimigo", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Espelha seu movimento#Atira em direção ao jogador", -- Abel
	-- Full old Desc: "Espelha seu movimento#Atira em direção ao jogador"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Efeito de lágrima aleatória", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "cria 1 pickup de cada tipo", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Mais drop de baús", -- Mom's Key
	-- Full old Desc: "+2 chaves#Mais drop de baús"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Transforme inimigos em ouro ao tocar#Inimigos dourados dropam moedas", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Duplica todos os pickups", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Solte um pickup aleatório quando for atingido", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "-2 Corações = Carrega totalmente o item ao pressionar o espaço#!!! Só funciona quando o item não é carregado!", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "LVL1: Orbital#LVL2: Tiro orbital#LVL3: Bandage girl#LVL4: Bandage girl LVL2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "!x Mais campeões aparecem", -- Champion Belt
	-- Full old Desc: "↑ +1 Dano up#!x Mais campeões aparecem"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "Explosões abalam e danificam todos os inimigos na sala", -- Butt Bombs
	-- Full old Desc: "↑ +5 Bombas#Explosões abalam e danificam todos os inimigos na sala"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Invencível quando parado por 1 segundo", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "↑ 50% de chance de reviver", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "↓ -0.15 Velocidade de Disparo Down", -- Lost Contact
	-- Full old Desc: "Lágrimas protegidas#↓ -0.15 Velocidade de Disparo Down"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Deixe rastro vermelho no chão ao ser atingido", -- Anemic
	-- Full old Desc: "↑ +5 Alcance up#Deixe rastro vermelho no chão ao ser atingido"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "↑ +1 Saúde Up", -- Placenta
	-- Full old Desc: "Regenere a saúde lentamente#↑ +1 Saúde Up"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "+5 Bombas", -- Sad Bombs
	-- Full old Desc: "Explosão de lágrima!#+5 Bombas"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Lágrimas ricocheteiam nas paredes, inimigos e objetos ambientais.", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Lágrimas anti-gravidade", -- Anti-Gravity
	-- Full old Desc: "↑ lágrimas up#Lágrimas anti-gravidade"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "+5 Bombas", -- Pyromaniac
	-- Full old Desc: "Explosões curam você#+5 Bombas"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 225] = "Chance de dropa Coração negro/alma ao ser atingido", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "Solte uma moeda ao ser atingido", -- Piggy Bank
	-- Full old Desc: "+3 Moedas#Solte uma moeda ao ser atingido"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "↑ lágrimas up", -- Mom's Perfume
	-- Full old Desc: "Fotos de medo#↑ lágrimas up"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 230] = "+6 Coraçõe negro", -- Abaddon
	-- Full old Desc: "↑ +1.5 Dano up#↑ +0.2 Velocidade up#Lágrimas de medo#↓ Remove todos os corações vermelhos#+6 Coraçõe negro"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 234] = "Gera aranhas quando você mata um inimigo", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Um toque, transforme inimigos em cocô", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 241] = "Duplica todas os drops depickup", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "Chance de bloquear as lágrimas", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Escudo de bloqueio de lágrima", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Dispara lágrimas aleatórias do tipo laser", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Duplica seus tiros", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "Revela salas secretas", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Seus familiares causam mais dano", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Aranhas/moscas azuis causam o dobro do dano", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "2 itens Boss aparecem em vez de 1#!!! Apenas um pode ser pego", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "Dobrar todas os dropes de bombas", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Transforma todos os comprimidos em cartas", -- Starter Deck
	-- Full old Desc: "Você pode carregar 2 cartões#Transforma todos os comprimidos em cartas"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Transforma todas as cartas em comprimidos", -- Little Baggy
	-- Full old Desc: "Você pode transportar 2 comprimidos#Transforma todas as cartas em comprimidos"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "+5 Bombas", -- Hot Bombs
	-- Full old Desc: "Bombas em chamas#+5 Bombas"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 258] = "Rola novamente todos os seus itens toda vez que você muda de andar", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "Imunidade a Maldições", -- Black Candle
	-- Full old Desc: "Imunidade a Maldições#+1 Coração negro"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ O dano causado diminui pela distância percorrida pela lágrima", -- Proptosis
	-- Full old Desc: "↑ +100% Dano up#↓ O dano causado diminui pela distância percorrida pela lágrima"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Quando atingir 1,5 Corações, causa dano a todos os inimigos na sala", -- Missing Page 2
	-- Full old Desc: "+1 Coração negro#Quando atingir 1,5 Corações, causa dano a todos os inimigos na sala"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 265] = "Quando atingido por lágrimas inimigas, pode danificar todos os inimigos na sala", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Deixa um rastro de lentidão#Pode gerar aranhas amigáveis ao limpar uma sala", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Atira lasers", -- Robo-Baby 2.0
	-- Full old Desc: "Atira lasers"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Nasce moscas azuis", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "rastro verde", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Cura meio coração quando mata um inimigo", -- Leech
	-- Full old Desc: "Cura meio coração quando mata um inimigo"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Drops aleatórios de pickups", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Mosca explosiva amigável", -- BBF
	-- Full old Desc: "Mosca explosiva amigável"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Bomba jogável familiar", -- Bob's Brain
	-- Full old Desc: "Bomba jogável familiar"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Ao ser atingido, ganhe um orbital de médio porte", -- Best Bud
	-- Full old Desc: "Ao ser atingido, ganhe um orbital de médio porte"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "Atira um laser de enxofre", -- Lil Brimstone
	-- Full old Desc: "Atira um laser de enxofre"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Ganhe um corpo invulnerável#!!! Quando o coração familiar é atingido, você sofre dano", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Fantasma amigável familiar", -- Lil Haunt
	-- Full old Desc: "Fantasma amigável familiar"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "!!! Converter: # 1,5 Corações vermelhos em 1 coração de alma", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Orbital gordo grande", -- Big Fan
	-- Full old Desc: "Orbital gordo grande"
	-- English: "Large orbital"

	[C_ID .. 280] = "Gera aranhas azuis", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Os inimigos o atacarão", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Permite pular", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Role novamente todos os pickup, pedestais e todos os itens em espera", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Rolar novamente todos os itens retidos", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Rolar novamente todos os inimigos na sala", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Imitar o efeito da sua carta retida", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Jogue fogo vermelho", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "Pode armazenar até 4 corações vermelhos", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "!!! Insta kills inimigos e chefes de cocô!#Transforma inimigos em cocô", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "Atire um laser de enxofre nas 4 direções", -- Head of Krampus
	-- Full old Desc: "Atire um laser de enxofre nas 4 direções"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Derruba os inimigos próximos", -- Butter Bean
	-- Full old Desc: "Derruba os inimigos próximos"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Danificar a sala inteira#Preço: 1 moeda", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "!!! converte:#2 Corações de alma/negro em 1 coração vermelho", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 300] = "Tocar nos inimigos os machuca", -- Aries
	-- Full old Desc: "↑ +0.25 Velocidade up#Tocar nos inimigos os machuca"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Metade do dano recebido no quarto quando você já foi atingido", -- Cancer
	-- Full old Desc: "+3 Corações de alma#Metade do dano recebido no quarto quando você já foi atingido"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 303] = "Chance de obter invencibilidade ao ser atingido", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Equilibra suas estatísticas!#!!! Todas as estatísticas posteriores também afetarão outras estatísticas", -- Libra
	-- Full old Desc: "+6 Moedas / Chaves / Bombas#Equilibra suas estatísticas!#!!! Todas as estatísticas posteriores também afetarão outras estatísticas"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Rastro azul é deixado para trás de Isaac", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "Quando morto, respawn como Judas Negro#↑ (Dano x 2)", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 313] = "Ignore o primeiro hit em todos os quartos", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Você pode Quebrar pedras!", -- Thunder Thighs
	-- Full old Desc: "↑ +1 Saúde Up#-0.4 Velocidade down#Você pode Quebrar pedras!"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Lágrimas magnéticas", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "Ao carregar e ser atingido, teleporta você para uma sala aleatória", -- Cursed Eye
	-- Full old Desc: "Onda carregada de lágrimas#Ao carregar e ser atingido, teleporta você para uma sala aleatória"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Lágrimas deixam rastro tóxico", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Combate próximo familiar", -- Gemini
	-- Full old Desc: "Combate próximo familiar"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Salta pela sala#Atira em direção a Isaac#O dano dele é igual ao seu dano", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Mosca Controlável", -- ???'s Only Friend
	-- Full old Desc: "Mosca Controlável"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Corrente + Bola", -- Samson's Chains
	-- Full old Desc: "Corrente + Bola#Pode destruir pedras e ferir inimigos"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Copia o efeito de um de seus familiares", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Explosão de lágrima#Carrega ao atirar", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Teleporta você para:#Segreta / Error / Sala de item", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Corte a cabeça#Cabeça está parada#Controle seu corpo separadamente", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Mantenha pressionado o espaço até que a barra de carga esteja vazia para invencibilidade#!!! Não segure por muito tempo!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Invencibilidade ao ser atingido e meio coração", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Efeito Necronomicon ao ser atingido e meio coração", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Lágrima Controlável", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 332] = "Quando morto, reviva como Lázaro +1 item extra", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Efeito de mapeamento completo", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Projéteis agora se curvarão de Isaac e evitarão atingi-lo", -- The Soul
	-- Full old Desc: "+2 Corações de alma#Projéteis agora se curvarão de Isaac e evitarão atingi-lo"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Retarda ou acelera os quartos", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Atordoa os inimigos#Pode pegar itens", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Duplica todos os pedestais/ consumíveis na sala atual", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "Copia o efeito da pílula que você está segurando no momento", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "No início de cada quarto, todo inimigo recebe um efeito venenoso", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Congele todos os inimigos na sala atual#Cause dano e envenene qualquer inimigo próximo#Envia onda de picos pela sala#!!! Pode ser usado para abrir salas secretas", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "↓ Reduz a sua saúde para meio coração#Dispara uma grande lágrima espectral penetrante ((DMG+1) X 10)", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bombas agora explodem em um padrão em forma de cruz", -- Bomber Boy
	-- Full old Desc: "+5 bombas#Bombas agora explodem em um padrão em forma de cruz"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Faz com que o item da barra de espaço seja ativado duas vezes quando usado", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Duplique seus familiares para a sala atual", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Lágrimas espectrais", -- The Wiz
	-- Full old Desc: "Dispare 2 lágrimas de uma vez na diagonal, semelhante ao R U A WIZARD#Lágrimas espectrais"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Aumenta a repulsão", -- 8 Inch Nails
	-- Full old Desc: "↑ +1.5 Dano Up#Aumenta a repulsão"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Dispara as mesmas lágrimas que Isaac em termos de dano, estatísticas e efeitos", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Dispara lágrimas e copia seu dano lacrimal", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Larga um pickup aleatória em alguns quartos", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Bloquear uma lágrima pode derrubar um coração eterno", -- Sworn Protector
	-- Full old Desc: "Causa dano de contato#Bloqueia e atrai balas#Bloquear uma lágrima pode derrubar um coração eterno"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Causa dano de contato", -- Friend Zone
	-- Full old Desc: "Causa dano de contato"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Move-se ao longo de paredes/obstáculos na sala", -- Lost Fly
	-- Full old Desc: "Move-se ao longo de paredes/obstáculos na sala#causa dano de contato"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Quando uma bomba mata um inimigo, gera aranhas azuis#Faz com que suas bombas grudem nos inimigos", -- Sticky Bombs
	-- Full old Desc: "+5 bombas#Quando uma bomba mata um inimigo, gera aranhas azuis#Faz com que suas bombas grudem nos inimigos"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Filmar em uma direção aumenta sua taxa de tiro", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 371] = "Crie 6 bombas trolls sempre que você for atingido#Estes são afetados por itens de bomba", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Chance aleatória de derrubar uma bateria ou congelar todos os inimigos na sala#Chance de adicionar uma Carga ao item da barra de espaço", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ +12.5% Dano up para cada lágrima que atinge com sucesso um inimigo(max. +100%)", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 375] = "Random chance to deflect tears#Imune a explosões/Pisão do pé da mãe", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Shops instantly restock their items when you buy themAs lojas reabastecem instantaneamente seus itens quando você os comprar target or deal contact damage to Isaac", -- Restock
	-- Full old Desc: "Drops 3 pickup aleatórios#Shops instantly restock their items when you buy themAs lojas reabastecem instantaneamente seus itens quando você os comprar target or deal contact damage to Isaac"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Os inimigos aranha não têm mais como alvo ou causar dano a Isaac", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Disparar lágrimas por 3 segundos e dropa uma Butt Bomb", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Você pode abrir portas com moedas em vez de chaves", -- Pay To Play
	-- Full old Desc: "+5 moedas#Você pode abrir portas com moedas em vez de chaves"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Fornece um item aleatório no início de sua próxima run", -- Eden's Blessing
	-- Full old Desc: "↑ +0.7 lágrimas Up#Fornece um item aleatório no início de sua próxima run"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Pode ser jogado em inimigos para capturá-los (tipo Pokeball)#O próximo uso reaparecerá o mesmo inimigo que um companheiro amigável", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Detone qualquer lágrima atualmente na tela e faça com que cada uma se divida em mais 6 lágrimas que dispararão em círculo", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "Carrega pela sala causando dano de contato aos inimigos", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Pega todas as moedas próximas. A cada 6 moedas, ele sobe de nível, exceto o nível 4, que leva 12 moedas#Level 4: não dispara mais lágrimas, mas persegue os inimigos. também lançará bombas aleatoriamente#após o level 4: continuará coletando moedas e solte pickup aleatórios", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Rola novamente todas as rochas em outro tipo aleatório de objeto (por exemplo, cocô, vasos, TNT, cocô vermelho, blocos de pedra e etc.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Cria uma enorme aura de luz que retarda os inimigos dentro dela", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Coleta chaves, dando baús aleatórios em troca", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "Joga uma runa aleatória a cada 3 quartos", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Incêndios Lágrimas do Sagrado Coração", -- Seraphim
	-- Full old Desc: "Incêndios Lágrimas do Sagrado Coração"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "Toda vez que Isaac sofre dano, um efeito de charme é aplicado a todos os inimigos na sala", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Dará a você um efeito aleatório de item do zodíaco que muda após cada andar", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "Chance aleatória de envenenar inimigos#Cause dano por veneno no contato#Inimigos envenenados têm a chance de derrubar um coração negro na morte", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +3.15 Alcance Up", -- Marked
	-- Full old Desc: "Lagrimas de fogo direcionadas automaticamente a um alvo vermelho no chão, controlado pelo jogador#↑ +0.7 lágrimas Up#↑ +0.3 Altura da lágrima#↑ +3.15 Alcance Up"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "Ganhe a capacidade de carregar e disparar um anel de laser que viaja pela sala", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Cria até dois portais para viajar entre eles", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ +0.5 Altura da lágrima", -- Tractor Beam
	-- Full old Desc: "As lágrimas de Isaac agora viajam diretamente para a frente seguindo um raio de luz, mas também se movem para os lados com base no movimento do jogador#↑ +0.5 lágrimas Up#↑ +5.25 Alcance Up#↑ +0.16 Velocidade de Disparo Up#↑ +0.5 Altura da lágrima"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "As lágrimas agora têm a chance de aplicar um efeito de encolhimento#Inimigos encolhidos podem ser esmagados e mortos andando sobre eles", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = " Inimigos mortos com o anel preto têm chance de derrubar corações negros", -- Maw of the Void
	-- Full old Desc: "↑ +1.0 Dano Up#↑ +0.5 Altura da lágrima#Depois de disparar lágrimas por 3 segundos, uma cruz vermelha aparece na cabeça de Isaac que, ao soltar o botão de disparo, cria um anel preto causando dano aos inimigos dentro dele# Inimigos mortos com o anel preto têm chance de derrubar corações negros"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "Cria uma lança na sua frente que causa dano igual a 2 vezes o dano de lágrima", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "As lágrimas agora têm a chance de se tornar bombas pegajosas, que se prendem aos inimigos e explodem depois de alguns segundos", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Pedestais agora serão escolhidos a partir de itens aleatórios", -- Chaos
	-- Full old Desc: "Pedestais agora serão escolhidos a partir de itens aleatórios# Na coleta, também cai 1-6 pickup aleatórios"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Bloqueia lágrimas#Se uma lágrima atingir, ele peidará, causando dano aos inimigos próximos e encantando-os", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Inflige um efeito de status aleatório no contato", -- Farting Baby
	-- Full old Desc: "Permite que você veja seu dano de lágrima e as barras de saúde de todos os inimigos#Inflige um efeito de status aleatório no contato#dropa baterias aleatoriamente"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Aplica um efeito de status aleatório a todos os inimigos com os quais entra em contato.", -- GB Bug
	-- Full old Desc: "Aplica um efeito de status aleatório a todos os inimigos com os quais entra em contato."
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Rola de novo suas estatísticas#Afetará apenas estatísticas de dano, lágrimas, alcance e velocidade", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Aumente uma das estatísticas de Isaac, dependendo da cor da aura ao seu redor#Quando você sofrer dano, você receberá uma nova aura#Vermelha = +4.0 dano#Azul = -4 Atraso de lágrima#Amarelo = +0.5 Velocidade Up#Laranja = +7.5 alcance Up", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Quando você recebe dano, um anel preto aparecerá ao redor de Isaac, causando dano a qualquer inimigo em contato com ele#Inimigos mortos com ele têm a chance de derrubar um coração preto", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "Quando Isaac não tem corações vermelhos, este item dá a Isaac a capacidade de voar e a chance de ativar um escudo.", -- Empty Vessel
	-- Full old Desc: "+2 Corações negro#Quando Isaac não tem corações vermelhos, este item dá a Isaac a capacidade de voar e a chance de ativar um escudo."
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "↑ Cada vez que Isaac mata um inimigo, aumenta o dano temporário na sala atual#Máximo de +5 de dano up após 9 mortes", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Depois de sofrer dano suficiente, Isaac ganha um demônio permanente familiar", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Depois de pegar corações suficientes, Isaac ganha um familiar angelical permanente", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "Two items now spawn in each of the item rooms#Você pode escolher apenas um", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "↑ Dano X 2 se você não tiver nenhum recipiente de coração vermelho vazio#{VAR:EFFECTLIST}", -- Crown Of Light
	-- Full old Desc: "+2 Coração de alma#↑ Dano X 2 se você não tiver nenhum recipiente de coração vermelho vazio"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Permite carregar duas cartas/pílulas/runas", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Salta pela sala com uma aura que causar dano, causando dano a qualquer inimigo dentro#↑ Enquanto estava na aura, +50% multiplicador de danos", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Dá a você um efeito de lágrima diferente a cada lágrima que você disparar", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Teleporta você para outra sala aleatória que ainda não foi explorada", -- Teleport 2.0
	-- Full old Desc: "Teleporta você para outra sala aleatória que ainda não foi explorada#Hierarquia: Sala normal, Sala super Secreta, Shop, Sala de Item, Sala secret, Sala de Maldição, Salas de sacrifício, sala do Diabo/Anjo, I Am Error"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Andar em círculo gerará um símbolo de pentagrama no chão, que causa 10 de dano por tink", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "Aplica efeito de charme a qualquer inimigo à queima-roupa", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Volte o tempo e coloque-o de volta na sala anterior, no mesmo estado em que estava naquele momento", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Dá a Isaac uma grande auréola ao seu redor, causa dano de contato#Chance de refletir as balas inimigas", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Todos os pickup têm a chance de serem substituídos por um saco", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Dá a Isaac um cone de luz na frente dele que retarda qualquer inimigo dentro dele e suas lágrimas", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Coloca um barril TNT empurrável#Se usado uma segunda vez na mesma sala enquanto o último barril de TNT ainda estiver lá, ele explodirá remotamente o TNT", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "Lágrimas têm a chance de jogar moedas no chão ao acertar com sucesso um inimigo", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Dispara lágrimas em inimigos próximos que causam dano igual ao dano de lágrima de Isaac", -- Papa Fly
	-- Full old Desc: "Segue seu padrão de movimento em um atraso de 3 segundos#Dispara lágrimas em inimigos próximos que causam dano igual ao dano de lágrima de Isaac"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "As lágrimas de Isaac que passam pelo bebê dobram e aumentam os danos", -- Multidimensional Baby
	-- Full old Desc: "Segue seu padrão de movimento em um atraso de 3 segundos#As lágrimas de Isaac que passam pelo bebê dobram e aumentam os danos"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 433] = "Toda vez que você sofrer dano, My Shadow aplicará um efeito de medo a todos os inimigos na sala e gerará um carregador preto familiar que o atacará.", -- My Shadow
	-- Full old Desc: "Toda vez que você sofrer dano, My Shadow aplicará um efeito de medo a todos os inimigos na sala e gerará um carregador preto familiar que o atacará.#O carregador será morto se estiver muito danificado"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Toda vez que você mata um inimigo, uma mosca azul é adicionada ao Jar#empilha até 20 moscas#Usar o pote de moscas libera todas as moscas", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Atira 4 lágrimas em um padrão cruzado", -- Lil Loki
	-- Full old Desc: "Atira 4 lágrimas em um padrão cruzado"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "Depois de sofrer danos, o leite dá uma lágrima para o resto da sala", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Respawn todos os inimigos, permitindo que você cultive recompensas que aparecem depois de vencer a sala#!!! Se usado em uma luta de ganância, ele pode rolar novamente a sala para uma Loja", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "↑ +2.0 Altura da lágrima", -- Kidney Stone
	-- Full old Desc: "Aleatoriamente, enquanto dispara, você para de disparar e libera uma explosão de lágrimas e uma pedra nos rins#↓ -0.2 velocidade Down#↓ -15 Alcance Down#↑ +2.0 Altura da lágrima"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "Dispara um enorme laser Mega Satan por 15 segundos # laser persiste por 15 segundos inteiros, mesmo entre salas e pisos", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "!!! Enquanto em 1 coração vermelho cheio:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "!!! Enquanto em 1 coração vermelho cheio:#↑ +1.5 Alcance Up#↑ +0.7 lágrimas Up#↑ +0.2 Velocidade de disparo up#(Não funciona com o Lost)"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "A cada 15 lágrimas disparadas, você dispara um conjunto de lágrimas#Cada lágrima no conjunto causa dano duplo", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 446] = "Ao atirar, você obtém uma aura verde que envenena qualquer inimigo nela", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Enquanto dispara, gera aleatoriamente uma nuvem de cocô", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Ao receber dano, chance de obter ↑ +5 de alcance e deixar rastro de sangue", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "Balas inimigas têm chance de serem desviadas", -- Metal Plate
	-- Full old Desc: "+1 Coração de alma#Balas inimigas têm chance de serem desviadas"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Lágrimas podem transformar inimigos em ouro", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 452] = "Solta uma carta/runa aleatória#Dobra os efeitos das cartas/runas", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "↑ +1.5 Alcance Up", -- Compound Fracture
	-- Full old Desc: "Lágrimas ósseas#As lágrimas se quebram em 1-3 fragmentos ósseos menores ao atingir qualquer coisa#↑ +1.5 Alcance Up"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Permite que Isaac carregue duas cartas, pílulas ou qualquer combinação de ambas ao mesmo tempo#Deixa cair um carta/pílula aleatório", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 457] = "Chance de ignorar danos", -- Cone Head
	-- Full old Desc: "+1 Coração de alma#Chance de ignorar danos"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "Veneno pegajoso Lágrimas até o inimigo morrer", -- Belly Button
	-- Full old Desc: "Veneno pegajoso Lágrimas até o inimigo morrer"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "Dropa um trinket ou pickup aleatório", -- Sinus Infection
	-- Full old Desc: "Dropa um trinket ou pickup aleatório#+Slot extra para tinted"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "Chance de disparar lágrimas concussivas", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 463] = "Chance de atirar pedras destruindo lágrimas", -- Sulfuric Acid
	-- Full old Desc: "↑ +0.3 Dano Up#Chance de atirar pedras destruindo lágrimas"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Os inimigos campeões largam os pickup com mais frequência", -- Glyph of Balance
	-- Full old Desc: "+2 Corações de alma#Os inimigos campeões largam os pickup com mais frequência"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Permite disparar lágrimas na diagonal, disparando em duas direções", -- Analog Stick
	-- Full old Desc: "↑ -2 Atraso de lágrima (Lágrimas up)#Permite disparar lágrimas na diagonal, disparando em duas direções"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "O primeiro inimigo morto na sala explodirá e envenenará todos os inimigos próximos", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "Causa dano baixo constante aos inimigos na direção em que o dedo aponta", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Leaves Trail of tears#Inimigos que tocam na nuvem podem ativar o efeito Fenda no o céu", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Salta pela sala#Enquanto dispara lágrimas, ele para de se mover", -- Hushy
	-- Full old Desc: "Salta pela sala#Causa dano de contato#Enquanto dispara lágrimas, ele para de se mover"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Ataque de espingarda", -- Lil Monstro
	-- Full old Desc: "Carrega seus tiros#Ataque de espingarda#(Semelhante ao monstros lung)"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Outros familiares seguem#Pára de se mover enquanto dispara lágrimas#Teleportará de volta para você quando você parar de atirar", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Familiar que avança lentamente e danifica os inimigos em seu caminho", -- Big Chubby
	-- Full old Desc: "Familiar que avança lentamente e danifica os inimigos em seu caminho"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "Duplica 1 pick-up aleatório na sala atual", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "!!! WQuando usado, consuma qualquer item de pedestal na sala#Item ativo: seu efeito será adicionado ao efeito de Vazio (Empilhamento dos efeitos)#↑ Item passivo: pequena atualização de estatística para uma estatística aleatória", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Congela todos os inimigos na sala até você pressionar o botão de disparo novamente#Tocar em um inimigo congelado irá prejudicar você com um status aleatório", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "Consome seu tinted e oferece o efeito permanentemente", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Gera 1 mosca/aranha azul para cada coleta no quarto", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "Muda você para um outro personagem aleatório#Remove o último item que você coletou", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Afeta o andar inteiro#Explode todos os objetos#{VAR:EFFECTLIST}#Opens boss rush / hush door / secret rooms", -- Mama Mega!
	-- Full old Desc: "Afeta o andar inteiro#Explode todos os objetos#Causa 200 de dano a todos os inimigos#Opens boss rush / hush door / secret rooms"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Ao usar, afasta os inimigos e gera uma onda de pedras", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% chance de dobrar todos os itens, consumíveis e baús no quarto#50% chance de remover itens / pickups no quarto e gerar 1 moeda", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Hurts you without damaging you#Can trigger item effects", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Dá a você um efeito de item aleatório para a sala", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Efeito aleatório de dados", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Cria 2 itens aleatórios, dependendo do pool de itens dos quartos atuais", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "Usar uma pílula causa dano aos inimigos", -- Acid Baby
	-- Full old Desc: "Dropa uma pílula aleatória a cada 2 quartos#Usar uma pílula causa dano aos inimigos"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Destaca a localização de salas secretas, pedras coloridas e alçapões", -- YO LISTEN!
	-- Full old Desc: "↑ +1 Sorte Up#Destaca a localização de salas secretas, pedras coloridas e alçapões"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Para cada recipiente vazio de coração:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Para cada recipiente vazio de coração:#↑ +0.2 Dano Up"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Lágrimas elétricas #Lágrimas geram 1-2 faíscas de eletricidade quando atingem algo", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Chance de disparar fogo em vez de lágrimas", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 497] = "Fique camuflado ao entrar em uma sala até começar a atirar", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "Nasce portas do diabo e da sala dos anjos#Ao entrar em um, o outro desaparece", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "Dá a você um recipiente de coração para cada 25 moedas#O Guardião ganhará Coin-Hearts adicionais", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Chance de disparar um rastro deixando uma lágrima que causa dano duplo", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "Cria uma torre de mosca que atira nos inimigos", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Gera aleatoriamente um inimigo encantado ao entrar em uma sala hostil", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Lágrimas podem causar sangramento, que causa 10% do dano total de pontos de vida dos inimigos a cada 5 segundos", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "Causa seu dano + 10% do dano igual à vida máxima do inimigo#Afeta todos os inimigos na sala#Chance de derrubar meio coração quando causa dano", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Orbital que causa sangramento, que causa 10% do dano total de pontos de vida dos inimigos a cada 5 segundos.", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Atira uma lágrima a cada 2 segundos em direção aleatória", -- Bloodshot Eye
	-- Full old Desc: "Atira uma lágrima a cada 2 segundos em direção aleatória"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Gera uma versão amigável em delírio branco de um chefe para a sala atual", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Orbita em torno de um inimigo aleatório até que ele morra", -- Angry Fly
	-- Full old Desc: "Orbita em torno de um inimigo aleatório até que ele morra#Causa dano de contato"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Buraco negro jogável, que suga tudo", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Chance aleatória de encantar/temer um inimigo#Chance aleatória de gerar um cocô de arco-íris ao receber dano", -- Bozo
	-- Full old Desc: "↑ +0.1 Dano Up#+1 Coração de alma#Chance aleatória de encantar/temer um inimigo#Chance aleatória de gerar um cocô de arco-íris ao receber dano"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Causas inimigos aleatórios para 'lag' em intervalos aleatórios, levando-os a congelar logo no lugar", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Cria um item aleatório do pool de itens da sala atual#Chance de gerar Lump of Coal ou The Poop", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Gera um sprinkler que gira em círculo, borrifando lágrimas em todas as direções", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Permite que você coloque rapidamente bombas no chão", -- Fast Bombs
	-- Full old Desc: "+7 Bombas#Permite que você coloque rapidamente bombas no chão"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Dá a você um familiar aleatório que parece um coop aleatório#Tem um efeito de chá aleatório#Será randomizado novamente a cada andar", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Um familiar que se transforma em outros familiares aleatórios a cada 10 segundos", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "+1 Carrega seu item ativo para cada 15 inimigos mortos", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Quando usado, faz com que um item aleatório da loja fique livre", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Projéteis inimigos próximos a você são mantidos no lugar por 3 segundos#Eles são jogados fora de você depois#Recarrega após 2 segundos", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Quando usado, armazena todas as pickup da sala atual#A utilização novamente as colocará no chão novamente#Isso permite que você mova as coisas entre as salas.", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Lágrimas serão conectadas juntamente com raios de eletricidade", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Tomando dano irá gerar um orbital#Max. 3 orbitais ao mesmo tempo#Esses orbitais podem ser destruídos se sofrerem muito dano", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Dá a você um familiar aleatório Harbinger que muda a cada 10 segundos#Cada precursor se comporta de maneira diferente, com base em qualquer um dos 5 chefes de cavaleiro originais", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "!!! Familiar que pode fazer tarefas para você:#Abrindo portas e baús, Trazer itens, Roubar da loja/diabo, combater inimigos, explodir e ativar placas de pressão", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "As lágrimas que atingem o prisma se dividirão em 4 novas lágrimas", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Lágrimas se comportam como bolas de bilho", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Concede uma recompensa se você matar inimigos na ordem em que estiverem marcados", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 532] = "As lágrimas abrandam enquanto viaja#Ao parar, eles explodem em lágrimas menores#As lágrimas podem ser disparadas em outras lágrimas, aumentando-as", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Fire white blasts of light#(Holy Brimstone)", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Permite manter 2 itens ativos#Alterne entre eles pressionando CTRL (mantenha pressionada a tecla CTRL ou (RT xbox) como \"The Forgotton\")", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 536] = "Sacrifique um familiar para gerar um item da sala Devil itempool#Pode ser usado 2 vezes", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "+1 pílula aleatória#Familiar que gera uma linha de fluência#O tipo de fluência muda toda vez que o jogador usa uma pílula", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "Receber dano pode adicionar permanentemente o efeito de sua bugiganga atual", -- Marbles
	-- Full old Desc: "Cria 3 bugigangas aleatórias#Receber dano pode adicionar permanentemente o efeito de sua bugiganga atual"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Gera um inimigo encantado quando atingido#Gera amigos mais fortes, mais quartos são limpos sem sofrer danos", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Lágrimas ricocheteiam no chão#As lágrimas causam dano por respingo a cada ricochete", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Reflete projéteis", -- Slipped Rib
	-- Full old Desc: "Orbital#Reflete projéteis"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "spawn de cocô branco quando você recebe dano#(O cocô branco dá uma aura que reduz pela metade o atraso das lágrimas (lágrimas up))#{VAR:EFFECTLIST}", -- Hallowed Ground
	-- Full old Desc: "spawn de cocô branco quando você recebe dano#(O cocô branco dá uma aura que reduz pela metade o atraso das lágrimas (lágrimas up))"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Prego que levita na frente de isaac#Causa 6 vezes o seu dano", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Cria um osso orbital ou ósseo encantado por inimigo morto#Efeito dura para a sala atual", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Concede uma aura que congela os inimigos no lugar", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = " Cria um trinket Misterioso de Papel", -- Divorce Papers
	-- Full old Desc: "+1 Coração de osso(tolera 3 hit, regenera com coração vermelho e desaparece depois do 3 hit)#↑ +0.7 Lágrimas Up# Cria um trinket Misterioso de Papel"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Familiar do tipo Bumerangue Causa 2x o seu dano", -- Jaw Bone
	-- Full old Desc: "Familiar do tipo Bumerangue Causa 2x o seu dano"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 550] = "O pé da mamãe constantemente o ataca#O uso dela para o pé da mamãe no quarto atual#!!! (tente derrotar o Boss Rush com ele!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Segunda parte de uma pá quebrada#!!! Use a pá na colina de terra no \"Dark Room\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Cria um alçapão para o próximo andar#!!! Use a pá na colina de terra no \"Dark Room\"#!!! Desbloqueia algo legal", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "Solte moedas quando for atingido", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "Mais drops de cocô", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "-1 carga necessária para itens da barra de espaço ", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "Teleporta-o aleatoriamente, ao usar um item", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "Mais inimigos campeões#Maior chance de salas de desafio de chefes", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Imã de moeda", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "Chance de ativar o efeito Gamekid ao receber dano."
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Lágrimas pulsantes#Afeta o hitbox de lágrimas", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ Lagrimas up", -- Wiggle Worm
	-- Full old Desc: "Lágrimas se movem em ondas#↑ Lagrimas up"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Lágrimas se movem em espirais", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "Lágrimas maiores", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "Um item de loja gratuitamente", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Spikes / rastros não o machuca mais", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "Destruir rochas gera moedas", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "Mais corações negros", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "Corações mais eternos", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Desbloqueie baús sem usar chaves", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "Quando em meio coração, gera um coração preto#!!! 3 usos", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Imita \"Polaroid\", \"The Negative\", \"Missing Page\" and \"Missing Poster\"#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Imita "Polaroid", "The Negative", "Missing Page" and "Missing Poster""
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "!!! Converter Drops:#corações para pickups#Diminuir a taxa de reprodução de corações", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "Reaparecer como \"The Lost\" quando morrer em uma sala de sacrifício.#Se ele é desbloqueado, você revive como ele mesmo fora das salas de sacrifício", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "Peido ao pegar moedas", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Peido spawna cocô a cada 30 segundos", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 28] = "22% chance de reaparecer como \"Blue Baby\"", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Gera uma mosca azul ao ser atingido", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "Efeito aleatório de cogumelo por sala#Pode revelar salas especiais no minimapa", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "Mais corações vermelhos caem", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "Aparecem mais baús e chaves", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "More Soul Hearts drop", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "↑ Chance to get +1.8 Dano up ao ser atingido", -- Red Patch
	-- Full old Desc: "↑ Chance to get +1.8 Dano up ao ser atingido"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "More Bombs appear#!!! Removes \"The Tick\"", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 43] = "Quando danificado até meio coração, teleporte para a última sala visitada", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "Aparecem mais pílulas", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "Aparecem mais cartas", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "Dropa meio coração ao pegar moedas", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "Dropa bombas ao pegar moedas", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "Dropa chaves ao pegar moedas", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "Chance de obter moedas extras ao pegar moedas", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "-15% Da vida dos chefes#Cura 1 coração vermelho ao entrar na sala do chefe", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Familiares com lágrimas penetrantes", -- Isaac's Head
	-- Full old Desc: "Familiares com lágrimas penetrantes"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "Consiga um coração eterno ao iniciar um novo andar", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "Reduz os preços das transações do diabo", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Familiar que pula pela sala#Atira na mesma direção que o jogador", -- ???'s Soul
	-- Full old Desc: "Familiar que pula pela sala#Atira na mesma direção que o jogador"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "↑ Chance de +0.5 Dano up ao matar um inimigo", -- Samson's Lock
	-- Full old Desc: "↑ Chance de +0.5 Dano up ao matar um inimigo"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Transforma todos os baús em baús vermelhos", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Rochas do espaço de rastreamento e rochas coloridas piscam a cada 10 segundos", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Transforma bombas trolls em bombas", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Efeito lombriga aleatória", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Random dice effect when getting hit#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Random dice effect when getting hit"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Ímã para pickup e inimigos", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Camufla o jogador aleatoriamente#Confunde inimigos", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Chance de gerar uma aranha enquanto estiver em uma sala hostil", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Bombas deixam poça", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "Dropa mais baterias", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "Bombas explosivas podem soltar captadores de bombas", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "Aumenta a chance de encontrar um Crawlspaces", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Efeito de trinket aleatório em todos os cômodos", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "50/50 chance de pickup extras OU nada/inimigo de baús", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Aumenta o knockback", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Efeitos de status mais longos nos inimigos", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Chance ao usar comprimidos/cartas para soltar uma cópia do comprimido/carta", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Invencibilidade dura mais tempo", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "+15% para obter espaço para itens duplos no próximo andar", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "Abra lojas gratuitamente", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "Abre automaticamente todas as lojas", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "Usar uma máquina de doação pode curá-lo ou gerar um mendigo", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Destruir cocô gera uma mosca azul", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "Cure metade de um coração quando você usa as chaves#Meio corações aparecem como corações cheios", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Chance muito baixa de itens da barra de espaço nas salas de itens", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Familiares se aproximam", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Cocô explode quando destruído", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "Aumenta a chance de o cocô preto aparecer", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ +0.2 Lagrimas Up", -- Cracked Crown
	-- Full old Desc: "↑ Aumentos de estatísticas de seus itens são 33% mais eficazes#↑ +0.2 Lagrimas Up#↑ -1 Atraso de lágrima"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "Mosca Inimiga agora são amigáveis", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Duplica todos os spawns de Mosca/Aranha azuis", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 98] = "Chance de atirar lágrimas venenosas", -- Nose Goblin
	-- Full old Desc: "Chance de atirar lágrimas venenosas"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "Chance de atirar lágrimas saltitantes", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "!!! Enquanto segura um item ativo totalmente carregado:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "!!! Enquanto segura um item ativo totalmente carregado:#↑ +0.25 Velocidade#↑ +0.75 Alcance#↑ +0.2 Lagrimas#↑ +0.10 Velocidade de Disparo#↑ +0.5 Dano#↑ +1 Sorte"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "!!! Enquanto segura um item ativo não carregado:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "!!! Enquanto segura um item ativo não carregado:#↑ +0.5 Velocidade#↑ +1.5 Alcance#↑ +0.4 Lagrimas#↑ +0.3 Velocidade de Disparo#↑ +1.5 Dano#↑ +2 Sorte"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "+1 quarto secreto extra por andar", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "!!! Quando moeda, chave e número de bomba são iguais:#Transforma semi-consumíveis em consumíveis duplos", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Aumenta o raio de qualquer fluido que você produz", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "O dano recebido ignora os espíritos / corações negros, fazendo com que seus recipientes vermelhos se esgote primeiro", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Chance de soltar um pickup aleatória / trinket ao ser atingido por uma explosão#É destruído depois", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Impede que os familiares de Isaac se movam", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "As lojas aparecerão agora no útero", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "Salas de itens agora aparecem no útero", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "As caixas de reabastecimento sempre aparecem nas salas de itens", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Gera uma mosca de ataque explosiva ao entrar em uma sala hostil", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Gera uma mosca de ataque venenoso ao entrar em uma sala hostil", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Gera uma mosca de ataque de lentidão ao entrar em uma sala hostil", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Gera uma mosca de ataque que causa quatro vezes o seu dano ao entrar em uma sala hostil", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Spawns 2-5 ataque moscas que tratam duplicar o seu dano ao entrar numa sala hostil", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "Chance to grow wings after taking damage#Persists for the rest of the room", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "Cura meio coração depois de viajar para o próximo andar", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Recarrega totalmente seu item ativo no início de uma briga de chefe", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "Protege você do primeiro dano que recebe em cada andar", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "O uso do item ativo o deixará cair em um pedestal no chão", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Faz com que os chefes anjos deixem itens normais em vez de peças-chave", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "A última porta que você usou permanece aberta", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "conecta seus familiares com raios de eletricidade", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Cria uma mosca azul ao pegar uma moeda", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Concede aos seus familiares tiros teleguiados", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Teleporta você de volta ao início", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Mães pé pisa em um inimigo!", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "Teleporta você para a sala do chefe", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Gera 1 bomba, 1 chave, 1 moeda, 1 coração", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "Teleporta você para a loja", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Cria uma máquina caça-níqueis ou fortuna", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "Cria uma máquina de doação de sangue", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Gera bombas trolls", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "Teleporta você para a sala de itens", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "Teleporta você para a sala secreta", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "spawna um mendigo", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "Duplique suas bombas", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "Duplique seu dinheiro", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "Duplique suas chaves", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "Duplique seus corações vermelhos#Só tem efeito curativo", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "Transforma todos os pickups em bombas", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "Transforma todos os pickups em moedas", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "Transforma todos os pickups em chaves", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "Transforma todos os pickups em corações", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "Teleporta você para devil / angel room", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Destrua todas as pedras na sala", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Duplique todos os pickups no quarto", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Cria um alçapão", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "Removes efeitos de maldição", -- Dagaz
	-- Full old Desc: "+1 coração de alma#Removes efeitos de maldição"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Rolar novamente todos os itens do pedestal", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Efeito rúnico aleatório", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Estatísticas aleatórias para todos os itens de pedestal na sala#(Destrói todos os pedestais na sala)", -- Black Rune
	-- Full old Desc: "Causa 40 de dano a todos os inimigos#Estatísticas aleatórias para todos os itens de pedestal na sala#(Destrói todos os pedestais na sala)"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Lança o cartão para matar qualquer coisa em seu caminho#Abre portas normais.", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Remove o preço de todos os itens da loja atual ou transação do diabo, tornando tudo gratuito", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Exibe dicas \"úteis\" sobre o uso", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Preenche toda a sala com cocô", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Mata o Isaac e gera muitos pickups, itens e / ou baús na mesma sala.", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Abra todas as portas na sala atual", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Ativa seu item da barra de espaço gratuitamente", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Role novamente pedestais e pickups na sala atual", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Duas das mãos da mãe desçam e agarram um inimigo", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "Concede o efeito Holy Mantle por um quarto # (O próximo dano que você recebe é 0)", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Efeito dura para a sala atual", -- Huge Growth
	-- Full old Desc: "↑ +7 de Dano Up#↑ +30 Alcance Up# ↑ + Tamanho Up#Quebra Pedra!#Efeito dura para a sala atual"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}", -- Era Walk
	-- Full old Desc: "Diminua a velocidade dos inimigos e das lágrimas de Isaac e dê um efeito Speed up#para a sala atual"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Cria uma nuvem de gás", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Causa 1 coração de dano", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Muda o número de bombas com chaves", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Spawna 5 bombas trolls", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 10] = "{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Consumir 3 pílulas de puberty garantirá a transformação de um adulto."
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Teleporte para a quarto aleatória", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Recarrega seu item ativo", -- 48 Hour Energy!
	-- Full old Desc: "Recarrega seu item ativo#Drops 1-2 pilhas"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "Drena todos os recipientes, exceto um coração", -- Hematemesis
	-- Full old Desc: "Drena todos os recipientes, exceto um coração#Spawna 1-4 corações vermelhos"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Você não pode se mover por alguns segundos", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "Abre entradas de quartos secretas no andar atual", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "Encanta todos os inimigos no quarto", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "Oculta o mapa do chão", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Cria uma grande poça no chão que causa dano aos inimigos", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Atire na diagonal por 60 segundos", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "Tome apenas meio coração de dano para o quarto atual", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Tome danos coração cheio para o quarto atual", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "spawna cocô enquanto caminha por 2 segundos", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "Maldição do efeito labirinto para piso atual", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Não afeta seu hitbox", -- One makes you larger
	-- Full old Desc: "Você cresce#Não afeta seu hitbox"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Seu hitbox fica menor", -- One makes you small
	-- Full old Desc: "Você fica menor#Seu hitbox fica menor"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Gera 1 aranha azul por cocô no quarto", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Gera 1 aranha azul por inimigo na sala#spawna 1-3 aranhas azuis quando nenhum inimigo está na sala", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Pixeliza a tela por 30 segundos", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "cria uma poça de fluido escorregadio", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "cria uma poça de fluido de lentidão", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "Retardar todos os inimigos no quarto", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Acelere todos os inimigos no quarto", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "Consumir trinket atual e obter seu efeito permanentemente", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "Atira uma lágrima ipecac", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Spawns última pílula usada", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
