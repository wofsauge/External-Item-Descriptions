-- This file contains text elements that are used for the modular description system.
local languageCode = "pl"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Mnożnik Szybkostrzelności",
    Tears = "{value} Szybkostrzelności",
    TearHeight = "{value} Wysokości lotu łez",
    TearSizeMultiplier = "{value} Wielkość łez",
    TearSize = "{value} Wielkość łez",
    TearDelayMultiplier = "{value} Mnożnik Opóźnienia Wystrzału",
    TearDelay = "{value} Opóźnienie Wystrzału",
    FireRateMultiplier = "{value} Mnożnik Szybkostrzelności",
    FireRate = "{value} Szybkostrzelności",
    DamageMultiplier = "{value} Mnożnik Obrażeń",
    Damage = "{value} Obrażeń",
	DamageTemp = "{value} Obrażeń (tymczasowe)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Obrażenia od bomb",
    Speed = "{value} Prędkości",
    RangeMultiplier = "{value} Mnożnik Zasięgu",
    Range = "{value} Zasięgu",
    Luck = "{value} Szczęścia",
    ShotSpeedMultiplier = "{value} Mnożnik Prędkości Strzałów",
    ShotSpeed = "{value} Prędkości Strzałów",
    Life = "{value} Żyć",
    SizeUp = "Rośniesz",
    SizeDown = "Malejesz",
    Flight = "Latanie",
    Invincibility = "Nieśmiertelność",
    RandomStatUp = "↑ Zwiększa losowo {value} statystyk",
    RandomStatDown = "↓ Zmniejsza losowo {value} statystyk",

    -- Health related
    RedHeart = "{value} Serce",
    SoulHeart = "{value} Serce Duszy",
    BlackHeart = "{value} Czarne Serce",
    BoneHeart = "{value} Kościane Serce",
    EternalHeart = "{value} Wieczne serce",
    GoldenHeart = "{value} Złote Serce",
    RottenHeart = "{value} Zgniłe Serce",
    BrokenHeart = "{value} Złamane Serce",
    EmptyHeart = "{value} Pusty zasobnik na serce",
    FullHealth = "Pełne zdrowie",
    HealingRed = "Leczy {value} czerwone serce",
    CoinHeart = "{value} Pieniężne Serce",
    EmptyCoinHeart = "{value} Pusty zasobnik na Pieniężne Serce",
    HealingCoin = "Leczy {value} monet",

    -- Room chances
    AngelDevilChance = "{value}% szansy na Pokój Diabła{{DevilRoom}}/Anioła{{AngelRoom}}",
    DevilChance = "{value}% szansy na Pokój Diabła{{DevilRoom}}",
    AngelChance = "{value}% szansy na Pokój Anioła{{AngelRoom}}",
    PlanetariumChance = "{value}% szansy na Planetarium",

    -- Pickups / Spawns
    Coin = "{value} Moneta",
    Bomb = "{value} Bomba",
    Key = "{value} Klucz",
    CoinBombKey = "{value} {{Coin}} moneta, {{Bomb}} bomba i {{Key}} klucz",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Tworzy {value} losowy pickup",
        RandomTrinket = "Tworzy {value} losowy trynkiet",
        RandomHeart = "Tworzy {value} losowe serce",
        RedHeart = "Tworzy {value} Czerwone Serce",
        SoulHeart = "Tworzy {value} Serce Duszy",
        BlackHeart = "Tworzy {value} Czarne Serce",
        BoneHeart = "Tworzy {value} Kościane Serce",
        Bomb = "Tworzy {value} bomb",
        Key = "Tworzy {value} klucz",
        Coin = "Tworzy {value} monetę",
        RandomCoin = "Tworzy {value} losową monetę",
        Card = "Tworzy {value} kartę",
        Pill = "Tworzy {value} pigułkę",
        Rune = "Tworzy {value} runę",
        Battery = "Tworzy {value} baterię",
        BlueFly = "Tworzy {value} niebieską muchę",
        BlueSpider = "Tworzy {value} niebieskiego pająka",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Naprowadzane łzy",
        Spectral = "Widmowe łzy",
        Piercing = "Penetrujące łzy",
        Poison = "{{Poison}} Trujące łzy",
    },
    -- Familiars
    FlyOrbital = "{value} Orbitująca mucha",
    Orbital = "Orbitujący sojusznik",
    BlockProjectiles = "Blokuje wrogie pociski",
    DamagePerTear = "Zadaje {value} obrażeń na łzę",
    DamagePerShot = "Zadaje {value} obrażeń na strzał",
    DamagePerSecond = "Zadaje {value} obrażeń na sekundę",
    ContactDamagePerSecond = "Zadaje {value} obrażeń kontaktowych na sekundę",
    MimicMovement = "Naśladuje ruchy Izaaka z {value}-sekundowym opóźnieniem",
    -- Player
    CantShoot = "Isaac nie może strzelać",
    PlayerContactDamage = "Zadaje {value} obrażeń kontaktowych na sekundę",
    DamageToAllEnemies = "Zadaje {value} obrażeń wszystkim wrogom",
    -- Misc
    LeftEye = "Otrzymujesz dla lewego oka:",
    RightEye = "Otrzymujesz dla prawego oka:",
    RoomEffect = "{{Timer}} Otrzymujesz w tym pokoju:",
    TimedEffect = "{{Timer}} Otrzymujesz przez {value} sekund:",
    OnUseEffect = "Po użyciu:",
    HeldEffect = "Gdy trzymasz:",
    MaxLuck = "{{Luck}} Maks.({max}%) przy {value} Szczęścia",
    SingleUseInfo = "{{Warning}} JEDNORAZOWE {{Warning}}",
    NoEffect = "Brak efektu",
    FullMapping = {
        BaseDesc = "{{Timer}} Pełne ujawnienie mapy dla piętra {exception}",
        Exception = "(oprócz {{SuperSecretRoom}} Super Sekretnego Pokoju)"
    }
}
