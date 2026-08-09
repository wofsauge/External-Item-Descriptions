-- This file contains text elements that are used for the modular description system.
local languageCode = "ru"
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
    TearsMultiplier = "{value} множитель скорострельности",
    Tears = "{value} скорострельности",
    TearHeight = "{value} к высоте слезы",
    TearSizeMultiplier = "{value} множитель размера слёз",
    TearSize = "{value} к размеру слёз",
    TearDelayMultiplier = "{value} множитель задержки между выстрелами",
    TearDelay = "{value} к задержке между выстрелами",
    FireRateMultiplier = "{value} множитель скорострельности",
    FireRate = "{value} к скорострельности",
    DamageMultiplier = "{value} множитель урона",
    Damage = "{value} к урону",
	DamageTemp = "{value} к урону (временный)", -- For Temp Binge Eater buffs
    BombDamage = "{value} к урону бомб",
    Speed = "{value} к скорости",
    RangeMultiplier = "{value} множитель дальности стрельбы",
    Range = "{value} к дальности стрельбы",
    Luck = "{value} к удаче",
    ShotSpeedMultiplier = "{value} множитель скорости снаряда",
    ShotSpeed = "{value} к скорости снаряда",
    Life = "{value} дополнительная жизнь",
    SizeUp = "Увеличение размера",
    SizeDown = "Уменьшение размера",
    Flight = "Полёт",
    Invincibility = "Неуязвимость",
    RandomStatUp = "↑ Увеличивает {value} случайную характеристику",
    RandomStatDown = "↓ Уменьшает {value} случайную характеристику",

    -- Health related
    RedHeart = "{value} к здоровью",
    SoulHeart = "{value} Сердце Души",
    BlackHeart = "{value} Черное Сердце",
    BoneHeart = "{value} Костяное Сердце",
    EternalHeart = "{value} Вечное сердце",
    GoldenHeart = "{value} Золотое сердце",
    RottenHeart = "{value} Гнилое сердце",
    BrokenHeart = "{value} Поломанное сердце",
    EmptyHeart = "{value} пустой контейнер сердца",
    FullHealth = "Полное здоровье",
    HealingRed = "Восстанавливает {value} сердца",
    CoinHeart = "{value} Монетное сердце",
    EmptyCoinHeart = "{value} пустое монетное сердце",
    HealingCoin = "Восстанавливает {value} монету",

    -- Room chances
    AngelDevilChance = "{value}% шанс появления Комнаты Дьявола/Ангела",
    DevilChance = "{value}% шанс появления Комнаты Дьявола",
    AngelChance = "{value}% шанс появления Комнаты Ангела",
    PlanetariumChance = "{value}% шанс появления Планетария",
    -- Pickups / Spawns
    Coin = "{value} Монет",
    Bomb = "{value} Бомб",
    Key = "{value} Ключей",
    CoinBombKey = "{value} {{Coin}} Монет, {{Bomb}} Бомб и {{Key}} Ключей",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Создаёт случайный расходник: {value}",
        RandomTrinket = "Создает {value} случайный брелок",
        RandomHeart = "Создает {value} случайное сердце",
        RedHeart = "Создает {value} Красное сердце",
        SoulHeart = "Создает {value} Сердце Души",
        BlackHeart = "Создает {value} Черное Сердце",
        BoneHeart = "Создает {value} Костяное Сердце",
        Bomb = "Создает {value} бомбу",
        Key = "Создает {value} ключ",
        Coin = "Создает {value} монету",
        RandomCoin = "Создает {value} случайную монету",
        Card = "Создает {value} карту",
        Pill = "Создает {value} пилюлю",
        Rune = "Создает {value} руну",
        Battery = "Создает {value} батарейку",
        BlueFly = "Создает {value} синюю муху",
        BlueSpider = "Создает {value} синего паука",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Самонаводящиеся слезы",
        Spectral = "Спектральные слезы",
        Piercing = "Пронзающие слезы",
        Poison = "{{Poison}} Отравляющие слезы",
    },
    -- Familiars
    FlyOrbital = "{value} Орбитальная муха",
    Orbital = "Орбиталь",
    BlockProjectiles = "Блокирует вражеские снаряды",
    DamagePerTear = "Наносит {value} урона за слезу",
    DamagePerShot = "Наносит {value} урона за выстрел",
    DamagePerSecond = "Наносит {value} урона в секунду",
    ContactDamagePerSecond = "Наносит {value} контактного урона в секунду",
    MimicMovement = "Повторяет движения Исаака с задержкой в {value} сек.",
    -- Player
    CantShoot = "Исаак не может стрелять",
    PlayerContactDamage = "Исаак наносит {value} контактного урона в секунду",
    DamageToAllEnemies = "Наносит {value} урона всем врагам",
    -- Misc
    LeftEye = "Для левого глаза:",
    RightEye = "Для правого глаза:",
    RoomEffect = "{{Timer}} До конца комнаты:",
    TimedEffect = "{{Timer}} Действует {value} сек.:",
    OnUseEffect = "При использовании:",
    HeldEffect = "При удержании:",
    MaxLuck = "{{Luck}} Макс. ({max}%) при удаче {value}",
    SingleUseInfo = "{{Warning}} ОДНОРАЗОВОЕ ИСПОЛЬЗОВАНИЕ {{Warning}}",
    NoEffect = "Нет эффекта",
    FullMapping = {
        BaseDesc = "{{Timer}} Полный эффект отображения карты для этажа {exception}",
        Exception = "(кроме {{SuperSecretRoom}} Супер Секретной Комнаты)"
    }
}
