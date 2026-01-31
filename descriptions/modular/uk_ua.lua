-- This file contains text elements that are used for the modular description system.
local languageCode = "uk_ua"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Темпу Стрільби",
    Tears = "{value} Темп Стрільби",
    TearHeight = "{value} Висота Польоту Сльози",
    TearSizeMultiplier = "{value} Розміру Сльози",
    TearSize = "{value} Розмір Сльози",
    TearDelayMultiplier = "{value} Затримки між слізьми",
    TearDelay = "{value} Затримка між слізьми",
    FireRateMultiplier = "{value} Швидкості Стрільби",
    FireRate = "{value} Швидкість Стрільби",
    DamageMultiplier = "{value} множник Шкоди",
    Damage = "{value} Шкоду",
	DamageTemp = "{value} Шкоду (тимчасове)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Шкода від Бомби",
    Speed = "{value} Швидкість",
    RangeMultiplier = "{value} Дальність",
    Range = "{value} Дальність",
    Luck = "{value} Удача",
    ShotSpeedMultiplier = "{value} Швидкості Стрільби",
    ShotSpeed = "{value} Швидкість Стрільби",
    Life = "{value} Життя",
    SizeUp = "Розмір збільшено",
    SizeDown = "Розмір зменшено",
    Flight = "Політ",
    Invincibility = "Невразливість",
    RandomStatUp = "↑ Збільшує {value} випадкових характеристик",
    RandomStatDown = "↓ Зменшує {value} випадкових характеристик",

    -- Health related
    RedHeart = "{value} Контейнер червоних сердець",
    SoulHeart = "{value} серце Душі",
    BlackHeart = "{value} Чорне серце",
    BoneHeart = "{value} Кісткове серце",
    EternalHeart = "{value} Вічне серце",
    GoldenHeart = "{value} Золоте серце",
    RottenHeart = "{value} Гниле серце",
    BrokenHeart = "{value} Зламане серце",
    EmptyHeart = "{value} пустий Контейнер червоних сердець",
    FullHealth = "Повне здоров'я",
    HealingRed = "Відновлює {value} серце",
    CoinHeart = "{value} Монетне серце",
    EmptyCoinHeart = "{value} Пусте монетне серце",
    HealingCoin = "Відновлює {value} монету",

    -- Room chances
    AngelDevilChance = "{value}% шанс появи кімнати Диявола/Ангела",
    DevilChance = "{value}% шанс появи кімнати Диявола",
    AngelChance = "{value}% шанс появи кімнати Ангела",
    PlanetariumChance = "{value}% шанс появи Планетарія",

    -- Pickups / Spawns
    Coin = "{value} Монета",
    Bomb = "{value} Бомба",
    Key = "{value} Ключ",
    CoinBombKey = "{value} {{Coin}} монета, {{Bomb}} бомба та {{Key}} ключ",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Створює {value} випадковий(і) розхідник(и)",
        RandomTrinket = "Створює {value} випадковий(і) брелок(и)",
        RandomHeart = "Створює {value} випадкове(і) серце(а)",
        RedHeart = "Створює {value} червоне(і) серце(а)",
        SoulHeart = "Створює {value} серце Душі",
        BlackHeart = "Створює {value} чорне(і) серце(а)",
        BoneHeart = "Створює {value} кісткове(і) серце(а)",
        Bomb = "Створює {value} бомбу(и)",
        Key = "Створює {value} ключ(і)",
        Coin = "Створює {value} монету(и)",
        RandomCoin = "Створює {value} випадкову монету(и)",
        Card = "Створює {value} картку(и)",
        Pill = "Створює {value} пігулку(и)",
        Rune = "Створює {value} руну(и)",
        Battery = "Створює {value} батарейку(и)",
        BlueFly = "Створює {value} синю муху(и)",
        BlueSpider = "Створює {value} синього павука(ів)",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Самонавідні сльози",
        Spectral = "Спектральні сльози",
        Piercing = "Пронизуючі сльози",
        Poison = "{{Poison}} Отруйні сльози",
    },
    -- Familiars
    FlyOrbital = "{value} Муха-орбіталь",
    Orbital = "Орбіталь",
    BlockProjectiles = "Блокує ворожі снаряди",
    DamagePerTear = "Наносить {value} шкоди за сльозу",
    DamagePerShot = "Наносить {value} шкоди за постріл",
    DamagePerSecond = "Наносить {value} шкоди за секунду",
    ContactDamagePerSecond = "Наносить {value} контактної шкоди за секунду",
    MimicMovement = "Повторює рухи персонажа з затримкою {value} секунди",
    -- Player
    CantShoot = "Персонаж не може стріляти",
    PlayerContactDamage = "Персонаж наносить {value} контактної шкоди за секунду",
    DamageToAllEnemies = "Наносить {value} шкоди усім ворогам",
    -- Misc
    LeftEye = "Отримує для лівого ока:",
    RightEye = "Отримує для правого ока:",
    RoomEffect = "{{Timer}} Отримує для кімнати:",
    TimedEffect = "{{Timer}} Діє протягом {value} секунд:",
    OnUseEffect = "При використанні:",
    HeldEffect = "Поки тримаєте:",
    MaxLuck = "{{Luck}} Макс.({max}%) при {value} Удачі",
    SingleUseInfo = "{{Warning}} ОДНОРАЗОВИЙ {{Warning}}",
    NoEffect = "Немає ефекту",
    FullMapping = {
        BaseDesc = "{{Timer}} Повне відображення карти для поверху {exception}",
        Exception = "(окрім {{SuperSecretRoom}} Суперсекретної кімнати)"
    }
}
