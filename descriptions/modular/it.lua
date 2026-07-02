-- This file contains text elements that are used for the modular description system.
local languageCode = "it"
EID.descriptions[languageCode].AdditionalInformations = {}

-- List of description IDs to ignore for fully automated descriptions
EID.descriptions[languageCode].IgnoreFullyAutomatedDescriptions = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Moltiplicatore di Lacrime",
    Tears = "{value} Lacrime",
    TearHeight = "{value} Altezza Lacrime",
    TearSizeMultiplier = "{value} Moltiplicatore Dimensione Lacrime",
    TearSize = "{value} Dimensione Lacrime",
    TearDelayMultiplier = "{value} Moltiplicatore Ritardo Lacrime",
    TearDelay = "{value} Ritardo Lacrime",
    FireRateMultiplier = "{value} Moltiplicatore Cadence",
    FireRate = "{value} Cadenza di Fuoco",
    DamageMultiplier = "{value} Moltiplicatore Danni",
    Damage = "{value} Danni",
	DamageTemp = "{value} Danni (temporanei)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Danni Bomba",
    Speed = "{value} Velocità",
    RangeMultiplier = "{value} Moltiplicatore Gittata",
    Range = "{value} Gittata",
    Luck = "{value} Fortuna",
    ShotSpeedMultiplier = "{value} Moltiplicatore Velocità Colpi",
    ShotSpeed = "{value} Velocità Colpi",
    Life = "{value} Vita",
    SizeUp = "Aumento Taglia",
    SizeDown = "Riduzione Taglia",
    Flight = "Volo",
    Invincibility = "Invulnerabilità",
    RandomStatUp = "↑ Aumenta casualmente {value} statistica",
    RandomStatDown = "↓ Diminuisce casualmente {value} statistica",

    -- Health related
    RedHeart = "{value} Salute",
    SoulHeart = "{value} Cuor{plural_e_i} Celest{plural_e_i}",
    BlackHeart = "{value} Cuor{plural_e_i} Ner{plural_o_i}",
    BoneHeart = "{value} Cuore Osse{plural_o_i}",
    EternalHeart = "{value} Cuore Etern{plural_o_i}",
    GoldenHeart = "{value} Cuore d'Or{plural_o_i}",
    RottenHeart = "{value} Cuore Marcio",
    BrokenHeart = "{value} Cuore Rotto",
    EmptyHeart = "{value} Contenitore Cuore Vuoto",
    FullHealth = "Salute Massima",
    HealingRed = "Cura di {value} cuor{plural_e_i}",
	CoinHeart = "{value} Portamonete vuot{plural_o_i}",
	EmptyCoinHeart = "{value} Portamonete vuot{plural_o_i}",
	HealingCoin = "Cura di {value} monet{plural_a_e}",
	
    -- Room chances
    AngelDevilChance = "{value}% probabilità di Stanza Diavolo/Angelo",
    DevilChance = "{value}% probabilità di Stanza del Diavolo",
    AngelChance = "{value}% probabilità di Stanza dell'Angelo",
    PlanetariumChance = "{value}% probabilità di Planetario",

    -- Pickups / Spawns
    Coin = "{value} Moneta",
    Bomb = "{value} Bomba",
    Key = "{value} Chiave",
    CoinBombKey = "{value} {{Coin}} moneta, {{Bomb}} bomba e {{Key}} chiave",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Genera {value} consumabile casuale",
        RandomTrinket = "Genera {value} ninnolo casuale",
        RandomHeart = "Genera {value} cuore casuale",
        RedHeart = "Genera {value} Cuore Rosso",
        SoulHeart = "Genera {value} Cuore Celeste",
        BoneHeart = "Genera {value} Cuore Osseo",
        Bomb = "Genera {value} bomba",
        Key = "Genera {value} chiave",
        Coin = "Genera {value} moneta",
        RandomCoin = "Genera {value} moneta casuale",
        Card = "Genera {value} carta",
        Pill = "Genera {value} pillola",
        Rune = "Genera {value} runa",
        Battery = "Genera {value} pila",
        BlueFly = "Genera {value} mosca blu",
        BlueSpider = "Genera {value} ragno blu",
    },

    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Lacrime a ricerca",
        Spectral = "Lacrime spettrali",
        Piercing = "Lacrime perforanti",
        Poison = "{{Poison}} Lacrime Velenose",
    },

    -- Familiars
    FlyOrbital = "{value} Mosca orbitale",
    Orbital = "Orbitale",
    BlockProjectiles = "Blocca proiettili nemici",
    DamagePerTear = "Infligge {value} danni per lacrima",
    DamagePerShot = "Infligge {value} danni per colpo",
    DamagePerSecond = "Infligge {value} danni al secondo",
    ContactDamagePerSecond = "Infligge {value} danni da contatto al secondo",
    MimicMovement = "Imita il movimento di Isaac con ritardo di {value} secondi",

    -- Player
    CantShoot = "Isaac non può sparare",
    PlayerContactDamage = "Isaac infligge {value} danni da contatto al secondo",
    DamageToAllEnemies = "Infligge {value} danni a tutti i nemici",

    -- Misc
    LeftEye = "Ottieni per occhio sinistro:",
    RightEye = "Ottieni per occhio destro:",
    RoomEffect = "{{Timer}} Ottieni per la stanza:",
    TimedEffect = "{{Timer}} Ottieni per {value} secondi:",
    OnUseEffect = "All'uso:",
    HeldEffect = "Tenendolo:",
    MaxLuck = "{{Luck}} Max.({max}%) a {value} Fortuna",
    SingleUseInfo = "{{Warning}} USO SINGOLO {{Warning}}",
    NoEffect = "Nessun effetto",
    FullMapping = {
        BaseDesc = "{{Timer}} Mappatura completa del piano {exception}",
        Exception = "(eccetto {{SuperSecretRoom}} Stanza Super Segreta)"
    }
}
