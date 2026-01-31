-- This file contains text elements that are used for the modular description system.
local languageCode = "spa"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "Lágrimas {value}",
    Tears = "Lágrimas {value}",
    TearHeight = "Altura de lágrima {value}",
    TearSizeMultiplier = "Tamaño de lágrimas {value}",
    TearSize = "Tamaño de lágrimas {value}",
    TearDelayMultiplier = "Vel. de lágrimas {value}",
    TearDelay = "Vel. de lágrimas {value}",
    FireRateMultiplier = "Lágrimas {value}",
    FireRate = "Lágrimas {value}",
    DamageMultiplier = "Daño {value}",
    Damage = "Daño {value}",
	DamageTemp = "Daño {value} (temporal)", -- For Temp Binge Eater buffs
    BombDamage = "Daño de bomba {value}",
    Speed = "Velocidad {value}",
    RangeMultiplier = "Alcance {value}",
    Range = "Alcance {value}",
    Luck = "Suerte {value}",
    ShotSpeedMultiplier = "Vel. de Lágrimas {value}",
    ShotSpeed = "Vel. de Lágrimas {value}",
    Life = "{value} Vida{plural_s} extra",
    SizeUp = "Aumenta tu tamaño",
    SizeDown = "Reduce tu tamaño",
    Flight = "Permite volar",
    Invincibility = "Invencibilidad",
    RandomStatUp = "↑ Aumenta aleatoriamente {value} estadística{plural_s}",
    RandomStatDown = "↓ Reduce aleatoriamente {value} estadística{plural_s}",

    -- Health related
    RedHeart = "{value} Cora{plural_zon}",
    SoulHeart = "{value} Cora{plural_zon} de alma",
    BlackHeart = "{value} Cora{plural_zon} negro{plural_s}",
    BoneHeart = "{value} Cora{plural_zon} de hueso",
    EternalHeart = "{value} Cora{plural_zon} eterno{plural_s}",
    GoldenHeart = "{value} Cora{plural_zon} dorado{plural_s}",
    RottenHeart = "{value} Cora{plural_zon} podrido{plural_s}",
    BrokenHeart = "{value} Cora{plural_zon} roto{plural_s}",
    EmptyHeart = "{value} Contenedor{plural_es} de cora{plural_zon} vacío{plural_s}",
    FullHealth = "Salud al máximo",
    HealingRed = "Cura {value} cora{plural_zon}",

    -- Room chances
    AngelDevilChance = "{value}% de probabilidad de Sala del Diablo/Ángel",
    DevilChance = "{value}% de probabilidad de Sala del Diablo",
    AngelChance = "{value}% de probabilidad de Sala del Ángel",
    PlanetariumChance = "{value}% de probabilidad de Planetario",

    -- Pickups / Spawns
    Coin = "{value} Moneda{plural_s}",
    Bomb = "{value} Bomba{plural_s}",
    Key = "{value} Llave{plural_s}",
    CoinBombKey = "{value} {{Coin}} moneda{plural_s}, {{Bomb}} bomba{plural_s} y {{Key}} llave{plural_s}",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Genera {value} recolectable{plural_s} aleatorio{plural_s}",
        RandomTrinket = "Genera {value} trinket{plural_s} aleatorio{plural_s}",
        RandomHeart = "Genera {value} cora{plural_zon} aleatorio{plural_s}",
        RedHeart = "Genera {value} cora{plural_zon} rojo{plural_s}",
        SoulHeart = "Genera {value} cora{plural_zon} de alma",
        BlackHeart = "Genera {value} cora{plural_zon} negro{plural_s}",
        BoneHeart = "Genera {value} cora{plural_zon} de hueso",
        Bomb = "Genera {value} bomba{plural_s}",
        Key = "Genera {value} llave{plural_s}",
        Coin = "Genera {value} moneda{plural_s}",
        RandomCoin = "Genera {value} moneda{plural_s} aleatoria{plural_s}",
        Card = "Genera {value} carta{plural_s}",
        Pill = "Genera {value} píldora{plural_s}",
        Rune = "Genera {value} runa{plural_s}",
        Battery = "Genera {value} batería{plural_s}",
        BlueFly = "Genera {value} mosca{plural_s} azul{plural_es}",
        BlueSpider = "Genera {value} araña{plural_s} azul{plural_es}",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Lágrimas teledirigidas",
        Spectral = "Lágrimas espectrales",
        Piercing = "Lágrimas perforantes",
        Poison = "{{Poison}} Lágrimas venenosas",
    },
    -- Familiars
    FlyOrbital = "{value} mosca{plural_s} orbital{plural_es}",
    Orbital = "Orbital",
    BlockProjectiles = "Bloquea proyectiles enemigos",
    DamagePerTear = "Inflige {value} de daño por lágrima",
    DamagePerShot = "Inflige {value} de daño por disparo",
    DamagePerSecond = "Inflige {value} de daño por segundo",
    ContactDamagePerSecond = "Inflige {value} de daño por contacto por segundo",
    MimicMovement = "Sigue tus movimientos con {value} segundo{plural_s} de retraso",
    -- Player
    CantShoot = "No puedes disparar",
    PlayerContactDamage = "Infliges {value} de daño por contacto por segundo",
    DamageToAllEnemies = "Inflige {value} de daño a todos los enemigos",
    -- Misc
    LeftEye = "Otorga para el ojo izquierdo:",
    RightEye = "Otorga para el ojo derecho:",
    RoomEffect = "{{Timer}} Otorga durante la habitación:",
    TimedEffect = "{{Timer}} Otorga durante {value} segundo{plural_s}:",
    OnUseEffect = "Al usarlo:",
    HeldEffect = "Al tenerlo:",
    MaxLuck = "{{Luck}} Máx.({max}%) con {value} de suerte",
    --MaxLuck = "{max}% de probabilidad con {value} de suerte",  -- old formatting
    SingleUseInfo = "{{Warning}} UN SOLO USO {{Warning}}",
    NoEffect = "Sin efecto",
    FullMapping = {
        BaseDesc = "{{Timer}} Revela el mapa completo del piso {exception}",
        Exception = "(excepto la Habitación {{SuperSecretRoom}} Super Secreta)"
    }
}
