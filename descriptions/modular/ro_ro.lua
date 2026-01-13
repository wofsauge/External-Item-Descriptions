-- This file contains text elements that are used for the modular description system.
local languageCode = "ro_ro"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} viteză de atac",
    Tears = "{value} viteză de atac",
    TearHeight = "{value} Înălțime lacrimă",
    TearSizeMultiplier = "{value} Mărimea Lacrimilor",
    TearSize = "{value} Mărimea Lacrimilor",
    TearDelayMultiplier = "{value} multiplicator întârziere lacrimi",
    TearDelay = "{value} Întârziere lacrimi",
    FireRateMultiplier = "{value} viteză de atac",
    FireRate = "{value} viteză de atac",
    DamageMultiplier = "{value} Daune",
    Damage = "{value} Daune",
	DamageTemp = "{value} Daune (temporare)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Daune ale bombelor",
    Speed = "{value} Viteză",
    RangeMultiplier = "{value} Distanță",
    Range = "{value} Distanță",
    Luck = "{value} Noroc",
    ShotSpeedMultiplier = "{value} Viteza atacului",
    ShotSpeed = "{value} Viteza atacului",
    Life = "{value} Viață",
    SizeUp = "Crește mărimea",
    SizeDown = "Scade mărimea",
    Flight = "Zbor",
    Invincibility = "Invincibilitate",
    RandomStatUp = "↑ Crește {value} statistic aleatoriu",
    RandomStatDown = "↓ Scade {value} statistic aleatoriu",

    -- Health related
    RedHeart = "{value} Viață",
    SoulHeart = "{value} Inimă Suflet",
    BlackHeart = "{value} Inimă Neagră",
    BoneHeart = "{value} Inimă Osoasă",
    EternalHeart = "{value} Inimă Eternală",
    GoldenHeart = "{value} Inimă Aurie",
    RottenHeart = "{value} Inimă Putrezită",
    BrokenHeart = "{value} Inimă Frântă",
    EmptyHeart = "{value} Container gol de inimă",
    FullHealth = "Viață plină",
    HealingRed = "Vindecă {value} inimă",
    CoinHeart = "{value} Inimă Bănuț",
    EmptyCoinHeart = "{value} Container gol Inimă-Bănuț",
    HealingCoin = "Vindecă {value} bănuț",

    -- Room chances
    AngelDevilChance = "{value}% șansă la camere Diavol/Înger",
    DevilChance = "{value}% șansă Cameră Diavol",
    AngelChance = "{value}% șansă Cameră Înger",
    PlanetariumChance = "{value}% șansă Planetariu",

    -- Pickups / Spawns
    Coin = "{value} Bănuț",
    Bomb = "{value} Bombe",
    Key = "{value} Cheie",
    CoinBombKey = "{value} {{Coin}} bănuț, {{Bomb}} bombă și {{Key}} cheie",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Oferă {value} lucru aleator",
        RandomTrinket = "Oferă {value} breloc aleator",
        RandomHeart = "Oferă {value} inimă aleatorie",
        RedHeart = "Oferă {value} Inimă Roșie",
        SoulHeart = "Oferă {value} Inimă Suflet",
        BlackHeart = "Oferă {value} Inimă Neagră",
        BoneHeart = "Oferă {value} Inimă Osoasă",
        Bomb = "Oferă {value} bombă",
        Key = "Oferă {value} cheie",
        Coin = "Oferă {value} bănuț",
        RandomCoin = "Oferă {value} bănuț aleator",
        Card = "Oferă {value} carte",
        Pill = "Oferă {value} pastilă",
        Rune = "Oferă {value} rună",
        Battery = "Oferă {value} baterie",
        BlueFly = "Oferă {value} muscă albastră",
        BlueSpider = "Oferă {value} păianjen albastru",
    },

    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Lacrimi care urmăresc",
        Spectral = "Lacrimi Fantomatice",
        Piercing = "Lacrimi pătrunzătoare",
        Poison = "{{Poison}} Lacrimi otrăvitoare",
    },

    -- Familiars
    FlyOrbital = "{value} Muscă orbitală",
    Orbital = "Orbital",
    BlockProjectiles = "Blochează proiectilele inamicilor",
    DamagePerTear = "Dă {value} daune pe lacrimă",
    DamagePerShot = "Dă {value} daune pe împușcătură",
    DamagePerSecond = "Dă {value} daune pe secundă",
    ContactDamagePerSecond = "Dă {value} daune de contact pe secundă",
    MimicMovement = "Oglindește mișcările lui Isaac cu {value} secunde întârziere",

    -- Player
    CantShoot = "Isaac nu poate trage",
    PlayerContactDamage = "Isaac dă {value} daune de contact pe secundă",
    DamageToAllEnemies = "Dă {value} daune tuturor inamicilor",

    -- Misc
    LeftEye = "Primește pentru ochiul stâng:",
    RightEye = "Primește pentru ochiul drept:",
    RoomEffect = "{{Timer}} Primește pentru cameră:",
    TimedEffect = "{{Timer}} Primește pentru {value} secunde:",
    OnUseEffect = "La folosire:",
    HeldEffect = "Când este ținut:",
    MaxLuck = "{{Luck}} Max.({max}%) la {value} noroc",
    SingleUseInfo = "{{Warning}} UTILIZARE UNICĂ {{Warning}}",
    NoEffect = "Fără efect",
    FullMapping = {
        BaseDesc = "{{Timer}} Vezi toată harta etajului {exception}",
        Exception = "(cu excepția {{SuperSecretRoom}} Camerei Super Secrete)"
    }
}
