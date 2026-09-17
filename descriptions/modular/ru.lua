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
    RandomStatUp = "↑ Увеличивает {value} случайную характеристику{pluralize}",
    RandomStatDown = "↓ Уменьшает {value} случайную характеристику{pluralize}",

    -- Health related
    RedHeart = "{value} к здоровью",
    SoulHeart = "{value} синее сердце{pluralize}",
    BlackHeart = "{value} чёрное сердце{pluralize}",
    BoneHeart = "{value} костяное сердце{pluralize}",
    EternalHeart = "{value} вечное сердце{pluralize}",
    GoldenHeart = "{value} золотое сердце{pluralize}",
    RottenHeart = "{value} гнилое сердце{pluralize}",
    BrokenHeart = "{value} разбитое сердце{pluralize}",
    EmptyHeart = "{value} пустой контейнер сердца{pluralize}",
    FullHealth = "Полное здоровье",
    HealingRed = "Восстанавливает {value} сердце{pluralize}",
    CoinHeart = "{value} монетное сердце{pluralize}",
    EmptyCoinHeart = "{value} пустое монетное сердце{pluralize}",
    HealingCoin = "Восстанавливает монеты: {value}{pluralize}",

    -- Room chances
    AngelDevilChance = "{value}% шанс появления Комнаты Дьявола/Ангела",
    DevilChance = "{value}% шанс появления Комнаты Дьявола",
    AngelChance = "{value}% шанс появления Комнаты Ангела",
    PlanetariumChance = "{value}% шанс появления Планетария",
    -- Pickups / Spawns
    Coin = "{value} монета{pluralize}",
    Bomb = "{value} бомба{pluralize}",
    Key = "{value} ключ{pluralize}",
    CoinBombKey = "{value} {{Coin}} монета{pluralize}, {{Bomb}} бомба{pluralize} и {{Key}} ключ{pluralize}",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Создаёт случайный расходник ×{value}{pluralize}",
        RandomTrinket = "Создаёт случайный брелок ×{value}{pluralize}",
        RandomHeart = "Создаёт случайное сердце ×{value}{pluralize}",
        RedHeart = "Создаёт красное сердце ×{value}{pluralize}",
        SoulHeart = "Создаёт синее сердце ×{value}{pluralize}",
        BlackHeart = "Создаёт чёрное сердце ×{value}{pluralize}",
        BoneHeart = "Создаёт костяное сердце ×{value}{pluralize}",
        Bomb = "Создаёт бомбу ×{value}{pluralize}",
        Key = "Создаёт ключ ×{value}{pluralize}",
        Coin = "Создаёт монету ×{value}{pluralize}",
        RandomCoin = "Создаёт случайную монету ×{value}{pluralize}",
        Card = "Создаёт карту ×{value}{pluralize}",
        Pill = "Создаёт пилюлю ×{value}{pluralize}",
        Rune = "Создаёт руну ×{value}{pluralize}",
        Battery = "Создаёт батарейку ×{value}{pluralize_y}",
        BlueFly = "Создаёт синюю муху ×{value}{pluralize_y}",
        BlueSpider = "Создаёт синего паука ×{value}{pluralize}",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Самонаводящиеся слезы",
        Spectral = "Спектральные слезы",
        Piercing = "Пронзающие слезы",
        Poison = "{{Poison}} Отравляющие слезы",
    },
    -- Familiars
    FlyOrbital = "Орбитальная муха ×{value}{pluralize}",
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
