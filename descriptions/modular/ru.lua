-- This file contains text elements that are used for the modular description system.
local languageCode = "ru"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} скорострельности",
    Tears = "{value} скорострельности",
    TearHeight = "{value} высота слезы",
    TearSizeMultiplier = "{value} размер слез",
    TearSize = "{value} размер слез",
    TearDelayMultiplier = "{value} множитель задержки между выстрелами",
    TearDelay = "{value} задержка между выстрелами",
    FireRateMultiplier = "{value} скорострельности",
    FireRate = "{value} скорострельности",
    DamageMultiplier = "{value} множитель урона",
    Damage = "{value} к урону",
	DamageTemp = "{value} к урону (временный)", -- For Temp Binge Eater buffs
    BombDamage = "{value} урон бомб",
    Speed = "{value} скорость",
    RangeMultiplier = "{value} множитель дальности стрельбы",
    Range = "{value} дальность стрельбы",
    Luck = "{value} удача",
    ShotSpeedMultiplier = "{value} Скорость снаряда",
    ShotSpeed = "{value} Скорость снаряда",
    Life = "{value} дополнительная жизнь",
    SizeUp = "Увеличение размера",
    SizeDown = "Уменьшение размера",
    Flight = "Полет",
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
        RandomPickup = "Создает {value} случайный предмет",
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
    MimicMovement = "Повторяет движения Исаака с задержкой {value} секунд",
    -- Player
    CantShoot = "Исаак не может стрелять",
    PlayerContactDamage = "Исаак наносит {value} контактного урона в секунду",
    DamageToAllEnemies = "Наносит {value} урона всем врагам",
    -- Misc
    LeftEye = "Для левого глаза:",
    RightEye = "Для правого глаза:",
    RoomEffect = "{{Timer}} Получаем в комнате:",
    TimedEffect = "{{Timer}} Действует {value} секунд:",
    OnUseEffect = "При использовании:",
    HeldEffect = "Пока держите:",
    MaxLuck = "{{Luck}} Макс.({max}%) при {value} удаче",
    SingleUseInfo = "{{Warning}} ОДНОРАЗОВЫЙ {{Warning}}",
    NoEffect = "Нет эффекта",
    FullMapping = {
        BaseDesc = "{{Timer}} Полный эффект отображения карты для этажа {exception}",
        Exception = "(кроме {{SuperSecretRoom}} Супер Секретной Комнаты)"
    }
}
