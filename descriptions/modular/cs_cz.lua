-- This file contains text elements that are used for the modular description system.
local languageCode = "cs_cz"
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
    TearsMultiplier = "{value} Násobič Slz",
    Tears = "{value} Slzy",
    TearHeight = "{value} Výška slz",
    TearSizeMultiplier = "{value} Násobič velikosti slz",
    TearSize = "{value} Velikost slz",
    TearDelayMultiplier = "{value} Násobič zpoždění slz",
    TearDelay = "{value} Zpoždění slz",
    FireRateMultiplier = "{value} Násobič rychlosti střel",
    FireRate = "{value} Rychlost střelby",
    DamageMultiplier = "{value} Násobič poškození",
    Damage = "{value} Poškození",
	DamageTemp = "{value} Poškození (dočasné)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Poškození bomb",
    Speed = "{value} Rychlost",
    RangeMultiplier = "{value} Násobič dostřelu",
    Range = "{value} Rozsah",
    Luck = "{value} Štěstí",
    ShotSpeedMultiplier = "{value} Násobič rychlosti střel",
    ShotSpeed = "{value} Rychlost střel",
    Life = "{value} Život",
    SizeUp = "Zvětšení",
    SizeDown = "Zmenšení",
    Flight = "Létání",
    Invincibility = "Nesmrtelnost",
    RandomStatUp = "↑ Zvýší náhodně {value} statistik{plural_ay}",
    RandomStatDown = "↓ Sníží náhodně {value} statistik{plural_ay}",

    -- Health related
    RedHeart = "{value} Zdraví",
    SoulHeart = "{value} Duševní Srdc{plural_e}",
    BlackHeart = "{value} Černé Srdc{plural_e}",
    BoneHeart = "{value} Kostěné Srdc{plural_e}",
    EternalHeart = "{value} Srdce Věčnosti",
    GoldenHeart = "{value} Zlaté Srdc{plural_e}",
    RottenHeart = "{value} Shnilé Srdc{plural_e}",
    BrokenHeart = "{value} Rozbité Srdc{plural_e}",
    EmptyHeart = "{value} Prázdné místo pro srdc{plural_e}",
    FullHealth = "Plné zdraví",
    HealingRed = "Vyléčí {value} srdc{plural_e}",
	CoinHeart = "{value} mince srdc{plural_e}",
	EmptyCoinHeart = "{value} prázdné mince srdc{plural_e}",
	HealingCoin = "Vyléčí {value} minc{plural_e}",

    -- Room chances
    AngelDevilChance = "{value}% šance na Ďábelskou/Andělskou místnost",
    DevilChance = "{value}% šance na Ďábelskou místnost",
    AngelChance = "{value}% šance na Andělskou místnost",
    PlanetariumChance = "{value}% šance na Planetárium",

    -- Pickups / Spawns
    Coin = "{value} Minc{plural_e}",
    Bomb = "{value} Bomb{plural_ay}",
    Key = "{value} Klíč{plural_e}",
    CoinBombKey = "{value} {{Coin}} minc{plural_e}, {{Bomb}} bomb{plural_ay} a {{Key}} klíč{plural_e}",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Vytvoří {value} náhodný pickup",
        RandomTrinket = "Vytvoří {value} náhodný trinket",
        RandomHeart = "Vytvoří {value} náhodné srdce",
        RedHeart = "Vytvoří {value} Červené srdce",
        SoulHeart = "Vytvoří {value} Duševní srdce",
		BlackHeart = "Vytvoří {value} Černé srdce",
        BoneHeart = "Vytvoří {value} Kostěné srdce",
        Bomb = "Vytvoří {value} bombu",
        Key = "Vytvoří {value} klíč{plural_e}",
        Coin = "Vytvoří {value} minc{plural_e}",
        RandomCoin = "Vytvoří {value} náhodnou minc{plural_ay}",
        Card = "Vytvoří {value} kartu",
        Pill = "Vytvoří {value} pilulku",
        Rune = "Vytvoří {value} runu",
        Battery = "Vytvoří {value} baterii",
        BlueFly = "Vytvoří {value} modrou mouchu",
        BlueSpider = "Vytvoří {value} modrého pavouk{plural_ay}",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Naváděné slzy",
        Spectral = "Spektrální slzy",
        Piercing = "Průrazné slzy",
        Poison = "{{Poison}} Jedovaté slzy",
    },
    -- Familiars
    FlyOrbital = "{value} orbitální mouch{plural_ay}",
    Orbital = "Orbitální",
    BlockProjectiles = "Blokuje nepřátelské střely",
    DamagePerTear = "Způsobuje {value} poškození za slzu",
    DamagePerShot = "Způsobuje {value} poškození za střelu",
    DamagePerSecond = "Způsobuje {value} poškození za sekundu",
    ContactDamagePerSecond = "Uděluje {value} kontaktního poškození za sekundu",
    MimicMovement = "Napodobuje Isaacův pohyb s {value} sekundovým zpožděním",
    -- Player
    CantShoot = "Izák nemůže střílet",
    PlayerContactDamage = "Izák uděluje {value} kontaktního poškození za sekundu",
    DamageToAllEnemies = "Způsobí {value} poškození všem nepřátelům",
    -- Misc
    LeftEye = "Získáš pro levé oko:",
    RightEye = "Získáš pro pravé oko:",
    RoomEffect = "{{Timer}} Získáš pro místnost:",
    TimedEffect = "{{Timer}} Získáš na {value} sekund:",
    OnUseEffect = "Po použití:",
    HeldEffect = "Při držení:",
    MaxLuck = "{{Luck}} Max.({max}%) při {value} štěstí",
    --MaxLuck = "{max}% šance při {value} štěstí",
    SingleUseInfo = "{{Warning}} JEDNO POUŽITÍ {{Warning}}",
    NoEffect = "Žádný efekt",
    FullMapping = {
        BaseDesc = "{{Timer}} Úplné mapování patra {exception}",
        Exception = "(kromě {{SuperSecretRoom}} Super Tajné Místnosti)"
    }
}

