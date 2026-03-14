-- This file contains text elements that are used for the modular description system.
local languageCode = "fr"
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
    TearsMultiplier = "Débit {value}",
    Tears = "Débit {value}",
    TearHeight = "Hauteur des larmes {value}",
    TearSizeMultiplier = "Taille des larmes {value}",
    TearSize = "Taille des larmes {value}",
    TearDelayMultiplier = "Délai des larmes {value}",
    TearDelay = "Délai des larmes {value}",
    FireRateMultiplier = "Cadence {value}",
    FireRate = "Cadence {value}",
    DamageMultiplier = "Dégâts {value}",
    Damage = "Dégâts {value}",
	DamageTemp = "Dégâts {value} (temporaire)", -- For Temp Binge Eater buffs
    BombDamage = "Dégâts de bombe {value}",
    Speed = "Vitesse {value}",
    RangeMultiplier = "Portée {value}",
    Range = "Portée {value}",
    Luck = "Chance {value}",
    ShotSpeedMultiplier = "Vitesse des tirs {value}",
    ShotSpeed = "Vitesse des tirs {value}",
    Life = "{value} Vie",
    SizeUp = "Taille augmentée",
    SizeDown = "Taille diminuée",
    Flight = "Permet à Isaac de voler",
    Invincibility = "Rend Isaac invulnérable",
    RandomStatUp = "↑ Augmente aléatoirement {value} stat",
    RandomStatDown = "↓ Diminue aléatoirement {value} stat",

    -- Health related
    RedHeart = "{value} réceptacle{pluralize} de cœur",
    SoulHeart = "{value} cœur d'âme",
    BlackHeart = "{value} cœur noir",
    BoneHeart = "{value} cœur d'os",
    EternalHeart = "{value} cœur éternel",
    GoldenHeart = "{value} cœur doré",
    RottenHeart = "{value} cœur moisi",
    BrokenHeart = "{value} cœur brisé",
    EmptyHeart = "{value} réceptacle{pluralize} de cœur vide",
    FullHealth = "Soin complet",
    HealingRed = "Soigne {value} cœur rouge",
	CoinHeart = "{value} réceptacle{pluralize} de pièce{pluralize}",
	EmptyCoinHeart = "{value} réceptacle{pluralize} de pièce{pluralize} vides",
	HealingCoin = "Soigne {value} réceptacle{pluralize} de pièce{pluralize}",

    -- Room chances
    AngelDevilChance = "{value}% de chance de Salle du Diable/Ange",
    DevilChance = "{value}% de chance de Salle du Diable",
    AngelChance = "{value}% de chance de Salle de l'Ange",
    PlanetariumChance = "{value}% de chance de Planétarium",

    -- Pickups / Spawns
    Coin = "{value} Pièce{pluralize}",
    Bomb = "{value} Bombe{pluralize}",
    Key = "{value} Clé{pluralize}",
    CoinBombKey = "{value} {{Coin}} pièce{pluralize}, {{Bomb}} bombe{pluralize} et {{Key}} clé{pluralize}",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Fait apparaître {value} pickup aléatoire{pluralize}",
        RandomTrinket = "Fait apparaître {value} babiole aléatoire{pluralize}",
        RandomHeart = "Fait apparaître {value} cœur aléatoire{pluralize}",
        RedHeart = "Fait apparaître {value} Cœur rouge{pluralize}",
        SoulHeart = "Fait apparaître {value} Cœur d'âme{pluralize}",
        BlackHeart = "Fait apparaître {value} Cœur noir{pluralize}",
        BoneHeart = "Fait apparaître {value} Cœur osseux{pluralize}",
        Bomb = "Fait apparaître {value} bombe{pluralize}",
        Key = "Fait apparaître {value} clé{pluralize}",
        Coin = "Fait apparaître {value} pièce{pluralize}",
        RandomCoin = "Fait apparaître {value} pièce aléatoire{pluralize}",
        Card = "Fait apparaître {value} carte{pluralize}",
        Pill = "Fait apparaître {value} pilule{pluralize}",
        Rune = "Fait apparaître {value} rune{pluralize}",
        Battery = "Fait apparaître {value} pile{pluralize_y}",
        BlueFly = "Invoque {value} mouche bleue{pluralize_y}",
        BlueSpider = "Invoque {value} araignée bleue{pluralize}",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Larmes autoguidées",
        Spectral = "Larmes spectrales",
        Piercing = "Larmes transperçantes",
        Poison = "{{Poison}} Larmes empoisonnées",
    },
    -- Familiars
    FlyOrbital = "{value} mouches orbitales",
    Orbital = "Orbite autour d'Isaac",
    BlockProjectiles = "Bloque les projectiles ennemis",
    DamagePerTear = "{value} dégâts par larme",
    DamagePerShot = "{value} dégâts par tir",
    DamagePerSecond = "{value} dégâts par seconde",
    ContactDamagePerSecond = "Inflige {value} dégâts de contact par seconde",
    MimicMovement = "Suit Isaac avec un délai de {value} secondes",
    -- Player
    CantShoot = "Isaac ne peut pas tirer",
    PlayerContactDamage = "Isaac inflige {value} dégâts de contact par seconde",
    DamageToAllEnemies = "Inflige {value} dégâts à tous les ennemis",
    -- Misc
    LeftEye = "Donne pour l'œil gauche:",
    RightEye = "Donne pour l'œil droit:",
    RoomEffect = "{{Timer}} Donne pour la salle:",
    TimedEffect = "{{Timer}} Donne pendant {value} secondes:",
    OnUseEffect = "À l'utilisation:",
    HeldEffect = "En étant tenu:",
    MaxLuck = "{{Luck}} Max.({max}%) à {value} de chance",
    --MaxLuck = "{{Luck}} {max}% chance at {value} luck",
    SingleUseInfo = "{{Warning}} USAGE UNIQUE {{Warning}}",
    NoEffect = "Aucun effet",
    FullMapping = {
        BaseDesc = "{{Timer}} Révèle l'étage sur la carte {exception}",
        Exception = "(excepté {{SuperSecretRoom}} Salle Super Secrète)"
    }
}
