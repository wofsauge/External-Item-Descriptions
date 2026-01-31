-- This file contains text elements that are used for the modular description system.
local languageCode = "bul"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} честота на стреляне",
    Tears = "{value} честота на стреляне",
    TearHeight = "{value} височина на сълзите",
    TearSizeMultiplier = "{value} размер на сълзите",
    TearSize = "{value} размер на сълзите",
    TearDelayMultiplier = "{value} забавяне на сълзите",
    TearDelay = "{value} забавяне на сълзите",
    FireRateMultiplier = "{value} честота на стреляне",
    FireRate = "{value} честота на стреляне",
    DamageMultiplier = "{value} щети",
    Damage = "{value} щети",
    DamageTemp = "{value} щети (временно)", -- For Temp Binge Eater buffs
    BombDamage = "{value} щети от бомба",
    Speed = "{value} скорост",
    RangeMultiplier = "{value} обхват",
    Range = "{value} обхват",
    Luck = "{value} късмет",
    ShotSpeedMultiplier = "{value} скорост на стрелбата",
    ShotSpeed = "{value} скорост на стрелбата",
    Life = "{value} живот",
    SizeUp = "Увеличаване на размера",
    SizeDown = "Намаляване на размера",
    Flight = "Летене",
    Invincibility = "Неуязвимост",
    RandomStatUp = "↑ Увеличава произволно {value} стат",
    RandomStatDown = "↓ Намалява произволно {value} стат",

    -- Health related
    RedHeart = "{value} здраве",
    SoulHeart = "{value} духовно сърце",
    BlackHeart = "{value} черно сърце",
    BoneHeart = "{value} костно сърце",
    EternalHeart = "{value} вечно сърце",
    GoldenHeart = "{value} златно сърце",
    RottenHeart = "{value} гнило сърце",
    BrokenHeart = "{value} счупено сърце",
    EmptyHeart = "{value} празен контейнер за сърце",
    FullHealth = "Пълно здраве",
    HealingRed = "Излекува {value} сърце",
	CoinHeart = "{value} Монета сърце",
	EmptyCoinHeart = "{value} празно сърце от монета",
	HealingCoin = "Излекува {value} монета",

    -- Room chances
    AngelDevilChance = "{value}% шанс за Дяволска/Ангелска стая",
    DevilChance = "{value}% шанс за Дяволска стая",
    AngelChance = "{value}% шанс за Ангелска стая",
    PlanetariumChance = "{value}% шанс за Планетариум",

    -- Pickups / Spawns
    Coin = "{value} монета",
    Bomb = "{value} бомба",
    Key = "{value} ключ",
    CoinBombKey = "{value} {{Coin}} монета, {{Bomb}} бомба и {{Key}} ключ",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Създава {value} произволен предмет",
        RandomTrinket = "Създава {value} произволна дрънкулка",
        RandomHeart = "Създава {value} произволно сърце",
        RedHeart = "Създава {value} червено сърце",
        SoulHeart = "Създава {value} духовно сърце",
        BlackHeart = "Създава {value} черно сърце",
        BoneHeart = "Създава {value} костно сърце",
        Bomb = "Създава {value} бомба",
        Key = "Създава {value} ключ",
        Coin = "Създава {value} монета",
        RandomCoin = "Създава {value} произволна монета",
        Card = "Създава {value} карта",
        Pill = "Създава {value} хапче",
        Rune = "Създава {value} руна",
        Battery = "Създава {value} батерия",
        BlueFly = "Създава {value} синя муха",
        BlueSpider = "Създава {value} син паяк",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Самонасочващи се сълзи",
        Spectral = "Спектрални сълзи",
        Piercing = "Пронизващи сълзи",
        Poison = "{{Poison}} Отровни сълзи",
    },
    -- Familiars
    FlyOrbital = "{value} орбитална муха",
    Orbital = "Орбитален спътник",
    BlockProjectiles = "Блокира вражески изстрели",
    DamagePerTear = "Нанася {value} щети за сълза",
    DamagePerShot = "Нанася {value} щети за изстрел",
    DamagePerSecond = "Нанася {value} щети в секунда",
    ContactDamagePerSecond = "Нанася {value} контактни щети в секунда",
    MimicMovement = "Копира движението на Isaac с {value} секунди закъснение",
    -- Player
    CantShoot = "Isaac не може да стреля",
    PlayerContactDamage = "Isaac нанася {value} контактни щети в секунда",
    DamageToAllEnemies = "Нанася {value} щети на всички врагове",
    -- Misc
    LeftEye = "Дава за лявото око:",
    RightEye = "Дава за дясното око:",
    RoomEffect = "{{Timer}} Дава за стаята:",
    TimedEffect = "{{Timer}} Дава за {value} секунди:",
    OnUseEffect = "При използване:",
    HeldEffect = "Докато се държи:",
    MaxLuck = "{{Luck}} Макс.({max}%) при {value} късмет",
    SingleUseInfo = "{{Warning}} Само едно използване {{Warning}}",
    NoEffect = "Никакъв ефект",
    FullMapping = {
        BaseDesc = "{{Timer}} Пълно картографиране на етажа {exception}",
        Exception = "(без {{SuperSecretRoom}} Супер Тайна Стая)"
    }
}

