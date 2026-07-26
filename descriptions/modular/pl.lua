-- This file contains text elements that are used for the modular description system.
local languageCode = "pl"
EID.descriptions[languageCode].AdditionalInformations = {}

-- List of description IDs to ignore for fully automated descriptions
local C_ID = "5.100."
EID.descriptions[languageCode].IgnoreFullyAutomatedDescriptions = {}

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
    Life = "{value} {plural:Życie|Życia|Żyć}",
    SizeUp = "Rośniesz",
    SizeDown = "Malejesz",
    Flight = "Latanie",
    Invincibility = "Nieśmiertelność",
    RandomStatUp = "↑ Zwiększa losowo {value} {plural:statystykę|statystyki|statystyk}",
    RandomStatDown = "↓ Zmniejsza losowo {value} {plural:statystykę|statystyki|statystyk}",

    -- Health related
    RedHeart = "{value} {plural:Serce|Serca|Serc}",
    SoulHeart = "{value} {plural:Serce Duszy|Serca Duszy|Serc Duszy}",
    BlackHeart = "{value} {plural:Czarne Serce|Czarne Serca|Czarnych Serc}",
    BoneHeart = "{value} {plural:Kościane Serce|Kościane Serca|Kościanych Serc}",
    EternalHeart = "{value} {plural:Wieczne Serce|Wieczne Serca|Wiecznych Serc}",
    GoldenHeart = "{value} {plural:Złote Serce|Złote Serca|Złotych Serc}",
    RottenHeart = "{value} {plural:Zgniłe Serce|Zgniłe Serca|Zgniłych Serc}",
    BrokenHeart = "{value} {plural:Złamane Serce|Złamane Serca|Złamanych Serc}",
    EmptyHeart = "{value} {plural:Pusty zasobnik na serce|Puste zasobniki na serce|Pustych zasobników na serce}",
    FullHealth = "Pełne zdrowie",
    HealingRed = "Leczy {value} {plural:czerwone serce|czerwone serca|czerwonych serc}",
    CoinHeart = "{value} {plural:Pieniężne Serce|Pieniężne Serca|Pieniężnych Serc}",
    EmptyCoinHeart = "{value} {plural:Pusty zasobnik na serce|Puste zasobniki na serce|Pustych zasobników na serce}",
    HealingCoin = "Leczy {value} {plural:monetę|monety|monet}",

    -- Room chances
    AngelDevilChance = "{value}% szansy na Pokój Diabła{{DevilRoom}}/Anioła{{AngelRoom}}",
    DevilChance = "{value}% szansy na Pokój Diabła{{DevilRoom}}",
    AngelChance = "{value}% szansy na Pokój Anioła{{AngelRoom}}",
    PlanetariumChance = "{value}% szansy na Planetarium",

    -- Pickups / Spawns
    Coin = "{value} {plural:Moneta|Monety|Monet}",
    Bomb = "{value} {plural:Bomba|Bomby|Bomb}",
    Key = "{value} {plural:Klucz|Klucze|Kluczy}",
    CoinBombKey = "{value} {{Coin}} moneta, {{Bomb}} bomba i {{Key}} klucz",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Tworzy {value} {plural:losowy zasób|losowe zasoby|losowych zasobów}",
        RandomTrinket = "Tworzy {value} {plural:losowy drobiazg|losowe drobiazgi|losowych drobiazgów}",
        RandomHeart = "Tworzy {value} {plural:losowe serce|losowe serca|losowych serc}",
        RedHeart = "Tworzy {value} {plural:Czerwone Serce|Czerwone Serca|Czerwonych Serc}",
        SoulHeart = "Tworzy {value} {plural:Serce Duszy|Serca Duszy|Serc Duszy}",
        BlackHeart = "Tworzy {value} {plural:Czarne Serce|Czarne Serca|Czarnych Serc}",
        BoneHeart = "Tworzy {value} {plural:Kościane Serce|Kościane Serca|Kościanych Serc}",
        Bomb = "Tworzy {value} {plural:bombę|bomby|bomb}",
        Key = "Tworzy {value} {plural:klucz|klucze|kluczy}",
        Coin = "Tworzy {value} {plural:monetę|monety|monet}",
        RandomCoin = "Tworzy {value} {plural:losową monetę|losowe monety|losowych monet}",
        Card = "Tworzy {value} {plural:kartę|karty|kart}",
        Pill = "Tworzy {value} {plural:pigułkę|pigułki|pigułek}",
        Rune = "Tworzy {value} {plural:runę|runy|run}",
        Battery = "Tworzy {value} {plural:baterię|baterie|baterii}",
        BlueFly = "Tworzy {value} {plural:niebieską muchę|niebieskie muchy|niebieskich much}",
        BlueSpider = "Tworzy {value} {plural:niebieskiego pająka|niebieskie pająki|niebieskich pająków}",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Naprowadzane łzy",
        Spectral = "Widmowe łzy",
        Piercing = "Penetrujące łzy",
        Poison = "{{Poison}} Trujące łzy",
    },
    -- Familiars
    FlyOrbital = "{value} {plural:Orbitująca mucha|Orbitujące muchy|Orbitujących much}",
    Orbital = "Orbitujący sojusznik",
    BlockProjectiles = "Blokuje wrogie pociski",
    DamagePerTear = "Zadaje {value} obrażeń na łzę",
    DamagePerShot = "Zadaje {value} obrażeń na strzał",
    DamagePerSecond = "Zadaje {value} obrażeń na sekundę",
    ContactDamagePerSecond = "Zadaje {value} obrażeń kontaktowych na sekundę",
    MimicMovement = "Naśladuje ruchy Izaaka z {value}-sekundowym opóźnieniem",
    -- Player
    CantShoot = "Izaak nie może strzelać",
    PlayerContactDamage = "Zadaje {value} obrażeń kontaktowych na sekundę",
    DamageToAllEnemies = "Zadaje {value} obrażeń wszystkim wrogom",
    -- Misc
    LeftEye = "Otrzymujesz dla lewego oka:",
    RightEye = "Otrzymujesz dla prawego oka:",
    RoomEffect = "{{Timer}} Otrzymujesz w tym pomieszczeniu:",
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
