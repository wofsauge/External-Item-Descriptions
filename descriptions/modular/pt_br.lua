-- This file contains text elements that are used for the modular description system.
local languageCode = "pt_br"
EID.descriptions[languageCode].AdditionalInformations = {}

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
