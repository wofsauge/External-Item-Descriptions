-- This file contains text elements that are used for the modular description system.
local languageCode = "uk_ua"


-- Flag to disable modular description behavior for the whole language
-- Added to not mess to much with preexisting translations, before a translator looked
-- over the modular description strings. Remove variable to enable it again.
EID.descriptions[languageCode].DisableModularDescriptions = true

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

-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

EID.descriptions[languageCode].AdditionalInformations = {}

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ +1 Висота Польоту Сльози", -- My Reflection
	-- Full old Desc: "Сльози персонажа мають ефект бумеранга#↑ {{Range}} +1.5 Дальність збільшено#↑ {{Shotspeed}} +0.6 Швидкість Стрільби збільшено#↑ +1 Висота Польоту Сльози"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Стріляє нормальними слізьми", -- Brother Bobby
	-- Full old Desc: "Стріляє нормальними слізьми#Наносить 3.5 шкоди за сльозу"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Всі мухи стають дружніми", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Персонаж воскресає з повним здоров'ям", -- 1up!
	-- Full old Desc: "↑ +1 життя#Персонаж воскресає з повним здоров'ям"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} З отруєних ворогів можуть випасти Чорні серця", -- The Virus
	-- Full old Desc: "{{Poison}} Ви отруюєте ворогів дотиком#↓ {{Speed}} -0.1 Швидкість знижено#{{BlackHeart}} З отруєних ворогів можуть випасти Чорні серця"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Відображає значки спеціальних кімнат на карті#Не відкриває саму карту", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Політ на одну кімнату#{{MomsHeart}} Миттєво вбиває Матусину Ногу та Матусине Серце#{{Warning}} Вбиває персонажа при використанні на Сатані", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Створює одну купку лайна та відштовхує ворогів#Лайно можна розмістити біля провалля та підірвати, створивши міст", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Випускає 10 сліз навколо персонажа#Ці сльози копіюють ефекти та характеристики сліз персонажа, плюс 25 шкоди", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Заморожує усіх ворогів в кімнаті на 4 секунди", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Спричинює вибух довкола персонажа", -- Kamikaze!
	-- Full old Desc: "Спричинює вибух довкола персонажа#Наносить 40 шкоди"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Лякає всіх ворогів в кімнаті на 5 секунд", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "При активації предмета, персонаж метає голову в бік стрільби#{{Poison}} Голова вибухає при приземленні та отруює ворогів поблизу", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Телепортує персонажа до випадкової кімнати, окрім Я - ПОМИЛКА", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% шанс отримати нагороду за зачистку кімнати#Вищі шанси на перемогу в азартних іграх", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Удачу збільшено#+8% шанс отримати нагороду за зачистку кімнати#Вищі шанси на перемогу в азартних іграх"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} При активації, персонаж починає цілитись хрестиком-міткою#Ракета влучає у мітку через 1.5 секунди#Наносить 20x шкоди персонажа", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "{{Collectible118}} При активації, персонаж випускає лазер Сірки в напрямку стрільби", -- Shoop da Whoop!
	-- Full old Desc: "{{Collectible118}} При активації, персонаж випускає лазер Сірки в напрямку стрільби"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "↓ {{Tears}} Затримка між слізьми x2.5", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Персонаж стріляє бомбами замість сліз#Кожна бомба наносить 5x шкоди + 30#↓ {{Tears}} Затримка між слізьми x2.5"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Розхідники притягуються до персонажа", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Відкриває карту поверху#Не відображає значки кімнат", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Створює калюжу рідини#Рідина наносить 24 контактної шкоди в секунду", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Орбіталь-муха середнього радіуса", -- Distant Admiration
	-- Full old Desc: "Орбіталь-муха середнього радіуса#Наносить 75 контактної шкоди за секунду"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Дозволяє персонажу перетинати провалля шириною в одну клітинку", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HalfHeart}} Вбивство 13 ворогів відновлює персонажу половинку серця", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Активні предмети можуть бути зарядженими та застосованими двічі підряд", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} Товари у магазині коштують на 50% дешевше#Наявність двох Знижок Steam робить усі товари безкоштовними", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Створює 6 троль-бомб поблизу центру кімнати", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Сповільнює ворогів на 8 секунд", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Стріляє нормальними слізьми", -- Sister Maggy
	-- Full old Desc: "Стріляє нормальними слізьми#Наносить 3.5 шкоди за сльозу"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Персонаж стріляє лазерами замість сліз", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} Заряджувана атака#↑ {{Damage}} Шкода від сльози зростає відповідно до часу#Повністю заряджена атака наносить 400% Шкоди#↓ {{Tears}} Максимальний заряд рівний x2.5 Затримці між слізьми", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "↑ Розмір зменшено", -- Mini Mush
	-- Full old Desc: "↑ {{Speed}} +0.3 Швидкість збільшено#↓ {{Range}} -4.25 Дальність зменшено*#↑ +1.5 Висота Польоту Сльози*#(*Поєднання цих характеристик трішки збільшує фактичну Дальність)#↑ Розмір зменшено"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "Рівень1: Орбіталь#Рівень2: Сльозливий орбіталь#Рівень3: М'ясний Хлопчик Рівня1#Рівень4: М'ясний Хлопчик Рівня2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} Автомати Прийому Крові та {{Collectible135}} Крапельниця дають більше монет", -- PHD
	-- Full old Desc: "{{Pill}} Перетворює усі погані пігулки на хороші#Створює 1 пігулку#{{Heart}} Відновлює 2 червоні серця#{{BloodDonationMachine}} Автомати Прийому Крові та {{Collectible135}} Крапельниця дають більше монет"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Відкриває всі проходи до секретних кімнат", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "{{AngelDevilChance}} +17.5% шанс появи кімнат Диявола/Ангела, поки персонаж тримає цей предмет", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 серце Душі#Підвищує шанс появи боса Вершника при активації#{{AngelDevilChance}} +17.5% шанс появи кімнат Диявола/Ангела, поки персонаж тримає цей предмет"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Персонаж воскресає з 1 контейнером червоних сердець#↓ Встановлює кількість червоних контейнерів персонажа на 1", -- Dead Cat
	-- Full old Desc: "↑ +9 життів#Персонаж воскресає з 1 контейнером червоних сердець#↓ Встановлює кількість червоних контейнерів персонажа на 1#{{Warning}} Здоров'я персонажів, в яких не може бути червоних сердець, натомість встановлюється на 1 синє/чорне серце"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "{{SoulHeart}} +1 Soul Heart#↑ {{Damage}} +0.7 Damage up#↓ {{Speed}} -0.18 Speed down#Isaac deals 40 contact damage per second#Allows Isaac to destroy rocks by walking into them"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Відкриває люк на наступний поверх#{{LadderRoom}} 10% шанс відкрити люк до Криївки", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Монстро падає на ворога та наносить 120 шкоди#{{Warning}} Монстро падає на персонажа, якщо в кімнаті немає ворогів", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Летить у бік стрільби персонажа", -- Little Chubby
	-- Full old Desc: "Летить у бік стрільби персонажа#Наносить 52.5 контактної шкоди за секунду"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Відображає тип прилеглих кімнат#{{SecretRoom}} Може відобразити секретні та суперсекретні кімнати", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Timer}} Ефект триває 6.5 секунд", -- The Gamekid
	-- Full old Desc: "Невразливість#{{Fear}} Лякає усіх ворогів у кімнаті#Персонаж наносить 40 контактної шкоди за секунду#{{HalfHeart}} Вбивство 2 ворогів відновлює половинку серця#{{Timer}} Ефект триває 6.5 секунд"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Створює випадкову монету кожні 2 кімнати", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Стріляє лазерами", -- Robo-Baby
	-- Full old Desc: "Стріляє лазерами#Наносить 3.5 шкоди за постріл"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Створює половинку серця кожні 3 кімнати", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Сповільнювальні сльози", -- Little Gish
	-- Full old Desc: "{{Slow}} Сповільнювальні сльози#Наносить 3.5 шкоди за постріл"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Стріляє самонавідними слізьми", -- Little Steven
	-- Full old Desc: "Стріляє самонавідними слізьми#Наносить 3.5 шкоди за постріл"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Сльози розбиваються навпіл при контакті#Розбиті сльози наносять половину шкоди", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Реролить п'єдестальні предмети в поточній кімнаті", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Політ#Тіло персонажа від'єднується від голови й атакує ворогів, наносячи 82.5 контактної шкоди за секунду"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Зменшує всю отримувану шкоду до половинки серця", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ {{Damage}} +0.04 Шкоди за кожну {{Coin}} монетку в інвентарі персонажа", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} Персонаж пукає отруйним газом#Газ наносить шкоду персонажа 6 разів", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Прискорює всіх інших орбіталів", -- Guardian Angel
	-- Full old Desc: "Орбіталь#Прискорює всіх інших орбіталів#Блокує ворожі снаряди#Наносить 105 контактної шкоди за секунду"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Стріляє у ворогів поблизу", -- Demon Baby
	-- Full old Desc: "Стріляє у ворогів поблизу#Наносить 3 шкоди за постріл"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Персонаж стріляє ножами замість сліз#Ніж наносить 2x шкоди персонажа в ближньому бою та 6x шкоди на максимальній можливій дистанції кидка", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "Автоматично заряджає першу поділку активних предметів#{{Battery}} Повністю заряджає поточний активний предмет", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "При отриманні персонажем шкоди, з'являється компаньйон-птах", -- Dead Bird
	-- Full old Desc: "При отриманні персонажем шкоди, з'являється компаньйон-птах#Птах наносить 4 контактної шкоди за секунду"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Коли у персонажа половинка червоного серця чи менше:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Коли у персонажа половинка червоного серця чи менше:#↑ {{Damage}} +1.5 Шкоду збільшено#↑ {{Speed}} +0.3 Швидкість збільшено"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Створює випадкового компаньйона для поточної кімнати", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Застосовує ефект випадкового активного предмета", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "{{Bomb}} +5 бомб", -- Bobby-Bomb
	-- Full old Desc: "Самонавідні бомби#{{Bomb}} +5 бомб"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Шкоди для поточної кімнати#{{Warning}} Наносить 1 серце шкоди персонажу#Спочатку забирає червоні серця", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Реролить та перезапускає поточний поверх", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Муха-орбіталь великої дальності", -- Forever Alone
	-- Full old Desc: "Муха-орбіталь великої дальності#Наносить 30 контактної шкоди за секунду"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Політ, поки ви тримаєте цей предмет#{{Speed}} Встановлює вашу швидкість до, як мінімум, 1.5#При активації предмета, персонаж робить ривок", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Створює 1 бомбу кожні 2-3 кімнати", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} Що далі летять сльози, тим більше шкоди вони наносять", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "Перетворює 1 контейнер червоних сердець на 3 серця Душі", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% шанс, що нагорода за зачистку кімнати буде скринею#33% шанс, що нагороди не буде", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Завдає персонажу 0.5 серця шкоди та створює 1-3 монетки#{{Player14}} Створює 0-1 монеток для Хранителя", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Створює ляльку-приманку, яка приваблює ворогів та вибухає через 5 секунд", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "Бомби персонажа більше не вибухатимуть автоматично#Активуйте цей предмет, щоб одночасно підірвати всі поставлені бомби", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5 бомб#Бомби персонажа більше не вибухатимуть автоматично#Активуйте цей предмет, щоб одночасно підірвати всі поставлені бомби"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Персонаж може тримати 2 брелки", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Bomb}} +5 бомб", -- Bob's Curse
	-- Full old Desc: "{{Poison}} Бомби персонажа отруюють ворогів, які потрапили в радіус вибуху#{{Bomb}} +5 бомб"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} Персонаж отримує 1 серце Душі, коли його здоров'я зменшується до половинки серця#Спрацьовує раз на кімнату#Перезайдіть у кімнату, щоб ефект міг знову спрацювати", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Компаньйон, що збирає монети та створює випадкові розхідники за них", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Дозволяє розбивати камені та відкривати проходи в секретні кімнати", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "↓ {{Tears}} Темп Стрільби знижено", -- Ipecac
	-- Full old Desc: "Сльози персонажа летять по навісній траєкторії#{{Poison}} Сльози вибухають та отруюють ворогів поруч#↑ {{Damage}} +40 Шкоду збільшено#↓ {{Tears}} Темп Стрільби знижено"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "При влучанні сльозою у ворога, з шансом 1/6 з'явиться синя муха", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "↓ {{Damage}} -35% Шкоду знижено#↓ {{Tears}} Затримка між слізьми x 2", -- Technology 2
	-- Full old Desc: "Замінює праве око персонажа на лазер#Лазер наносить 20% шкоди#↓ {{Damage}} -35% Шкоду знижено#↓ {{Tears}} Затримка між слізьми x 2"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "Літає по кімнаті", -- The Peeper
	-- Full old Desc: "Літає по кімнаті#Наносить 17.1 контактної шкоди за секунду"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} При отриманні персонажем шкоди, активні предмети заряджаються на 1 поділку", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ {{Damage}} Коли персонажу завдають шкоди, його шкода зростає#Максимум 6 разів на поверх#Ефект діє до кінця поверху", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Відкриває карту поверху#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Відкриває карту поверху#Створює картку, руну або серце Душі"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Створює 5 променів світла біля ворогів#Наносить шкоду персонажа + 20", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Ви воскресаєте за ??? (Синього Малюка) при смерті", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Компаньйон зі спектральними слізьми", -- Ghost Baby
	-- Full old Desc: "Компаньйон зі спектральними слізьми#Наносить 3.5 шкоди за постріл"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Метає синій вогонь#Вогонь наносить контактну шкоду, блокує ворожі снаряди та зникає через 2 секунди", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Реролить усі розхідники в кімнаті", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Одночасно випускає дві сльози, що летять по діагоналі", -- Harlequin Baby
	-- Full old Desc: "Одночасно випускає дві сльози, що летять по діагоналі#Наносить 4 шкоди за постріл"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Замість сліз, персонаж керує хрестиком-міткою#Ракета прилітає на мітку через 1.5 секунди#Ракети наносять 20x шкоди персонажа", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "У випадковий момент топче ворогів", -- Daddy Longlegs
	-- Full old Desc: "У випадковий момент топче ворогів#Наносить 40 шкоди за секунду"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Сповільнює ворогів на 4 секунди", -- Spider Butt
	-- Full old Desc: "Сповільнює ворогів на 4 секунди#Наносить 10 шкоди усім ворогам"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Стріляє випадковими слізьми", -- Rainbow Baby
	-- Full old Desc: "Стріляє випадковими слізьми#Наносить 3-5 шкоди за секунду"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Відкриває всі двері в кімнаті, включно з {{SecretRoom}}{{SuperSecretRoom}}секретними кімнатами, {{ChallengeRoom}}{{BossRushRoom}}кімнатами виклику та дверима Мегасатани", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Портативний ігровий автомат#Витратьте 1 пенні, щоб з певним шансом створити розхідник", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Отримуючи шкоду, персонаж створює калюжу#Рідина наносить 24 шкоди за секунду", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Персонаж пукає, коли до нього торкаються", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Політ, поки ви тримаєте цей предмет#{{Speed}} Встановлює вашу швидкість до, як мінімум, 1.5#При активації предмета, персонаж робить ривок, створюючи за собою промені світла", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "Спочатку забирає червоні серця", -- Blood Rights
	-- Full old Desc: "Наносить 40 шкоди всім ворогам в кімнаті#{{Warning}} Наносить 1 серце шкоди персонажу#Спочатку забирає червоні серця"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "Клубок рухається за персонажем по інерції#Розмір клубка збільшується, коли він вбиває ворогів#Шкода від клубка збільшується разом із розміром", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Дзеркально повторює рухи персонажа#Стріляє в сторону персонажа", -- Abel
	-- Full old Desc: "Дзеркально повторює рухи персонажа#Стріляє в сторону персонажа#Наносить 3.5 шкоди за постріл"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Сльози персонажа отримують випадковий ефект кожні 2-3 секунди", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Створює по 1 розхіднику кожного типу", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Скрині містять більше розхідників", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 ключі#Скрині містять більше розхідників"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Торкаючись ворогів, ви перетворюєте їх на золотих#Персонаж наносить контактну шкоду, що базується на кількості монет в нього в інвентарі#{{Coin}} При вбивстві, з золотих ворогів випадають монети#Купки лайна, створені персонажем, з великим шансом будуть золотими", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Подвоює кількість створюваних розхідників, якщо це можливо", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "При отриманні персонажем шкоди, з шансом 50% буде створено випадковий розхідник", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} Використання незарядженого предмета повністю перезаряджає його за 2 серця#Працює лише коли у предмета немає зарядів", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "Рівень1: Орбіталь#Рівень2: Сльозливий орбіталь#Рівень3: Бинтова Дівчинка Рівень1#Рівень4: Бинтова Дівчинка Рівень2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "+15% шанс на появу ворогів-чемпіонів", -- Champion Belt
	-- Full old Desc: "↑ {{Damage}} +1 Шкоду збільшено#+15% шанс на появу ворогів-чемпіонів"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} Вибух оглушує та наносить шкоду усім ворогам у кімнаті", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 бомб#{{Confusion}} Вибух оглушує та наносить шкоду усім ворогам у кімнаті"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Персонаж стає невразливим, стоячи нерухомо більше 1 секунди", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% шанс воскреснути з половинкою серця, у випадку смерті", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "↓ {{Shotspeed}} -0.15 Швидкість Стрільби знижено", -- Lost Contact
	-- Full old Desc: "Сльози персонажа знищують ворожі снаряди#↓ {{Shotspeed}} -0.15 Швидкість Стрільби знижено"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Після отриманні шкоди, за персонажем з'являється кривавий слід, який наносить ворогам шкоду", -- Anemic
	-- Full old Desc: "↑ {{Range}} +5 Дальність збільшено#Після отриманні шкоди, за персонажем з'являється кривавий слід, який наносить ворогам шкоду"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HalfHeart}} 50% шанс відновити половинку серця кожної хвилини", -- Placenta
	-- Full old Desc: "↑ {{Heart}} +1 Контейнер червоних сердець#{{HalfHeart}} 50% шанс відновити половинку серця кожної хвилини"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "{{Bomb}} +5 бомб", -- Sad Bombs
	-- Full old Desc: "При вибуху, бомби персонажа випускають 10 сліз навколо#{{Bomb}} +5 бомб"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Сльози персонажа рикошетять від ворогів та перешкод", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Відпустіть кнопки стрільби, щоб дозволити сльозам полетіти в бік, у який вони були випущені#↑ {{Tears}} -2 Затримка між слізьми", -- Anti-Gravity
	-- Full old Desc: "Утримуйте кнопки стрільби, щоб сльози зависли в повітрі#Відпустіть кнопки стрільби, щоб дозволити сльозам полетіти в бік, у який вони були випущені#↑ {{Tears}} -2 Затримка між слізьми"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "Імунітет до кам'яних хвиль та атак Матусиної Ноги та ноги Сатани#{{Bomb}} +5 бомб", -- Pyromaniac
	-- Full old Desc: "Отримання удару від вибуху відновлює 1 червоне серце персонажу, замість того, щоб нанести йому шкоду#Імунітет до кам'яних хвиль та атак Матусиної Ноги та ноги Сатани#{{Bomb}} +5 бомб"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "↓ {{Range}} -10 Дальність зменшено", -- Cricket's Body
	-- Full old Desc: "Сльози розділяються на 4 при влучанні#Розділенісльози наносять половину шкоди#↑ {{Tears}} +1 Темп Стрільби збільшено#↓ {{Range}} -10 Дальність зменшено"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} При отриманні персонажем шкоди, може з'явитися серце Душі#{{HalfHeart}} При смерті з ворогів може випасти половинка червоного серця", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "При отриманні шкоди, з'являються 1-2 монети", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 монети#При отриманні шкоди, з'являються 1-2 монети#{{Player14}} 0-1 монети для Хранителя"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "↑ {{Tears}} +1 Темп Стрільби збільшено", -- Mom's Perfume
	-- Full old Desc: "{{Fear}} 15% шанс вистрілити сльозою страху#↑ {{Tears}} +1 Темп Стрільби збільшено"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "↓ {{Tears}} 4.3x Затримка між слізьми", -- Monstro's Lung
	-- Full old Desc: "{{Chargeable}} Атаки стають заряджуваними, а сльози випускаються в стилі дробовика#↓ {{Tears}} 4.3x Затримка між слізьми"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{BlackHeart}} +6 чорних сердець", -- Abaddon
	-- Full old Desc: "↑ {{Damage}} +1.5 Шкоду збільшено#↑ {{Speed}} +0.2 Швидкість збільшено#{{Fear}} Сльози страху#↓ {{EmptyHeart}} Прибирає усі контейнери червоних сердець#{{BlackHeart}} +6 чорних сердець"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "Персонаж залишає за собою слід зі сповільнювальної рідини", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% шанс вистрілити сповільнювальною сльозою#{{Luck}} 100% шанс при Удачі 18#Персонаж залишає за собою слід зі сповільнювальної рідини"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "↑ +0.3 Швидкість збільшено", -- Stop Watch
	-- Full old Desc: "{{Slow}} При отриманні персонажем шкоди, вороги у кімнаті перманентно сповільнюються#↑ +0.3 Швидкість збільшено"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "↑ +7 Висота Польоту Сльози", -- Tiny Planet
	-- Full old Desc: "Сльози кружляють довкола персонажа#↑ {{Range}} Дальність значно збільшується#↑ +7 Висота Польоту Сльози#Спектральні сльози"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "При вбивстві ворога з'являється синій павук", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Торкніться ворога, щоб перетворити його на купку лайна", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} +2% шанс на появу Вічних сердець", -- Key Piece 1
	-- Full old Desc: "{{Warning}} Зберіть обидві частини ключа, щоб відкрити двері до Мегасатани#{{AngelChance}} На 25% вищий шанс на появу кімнати Ангела#{{EternalHeart}} +2% шанс на появу Вічних сердець"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} +2% шанс на появу Вічних сердець", -- Key Piece 2
	-- Full old Desc: "{{Warning}} Зберіть обидві частини ключа, щоб відкрити двері до Мегасатани#{{AngelChance}} На 25% вищий шанс на появу кімнати Ангела#{{EternalHeart}} +2% шанс на появу Вічних сердець"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "Подвоює усі винагороди за зачистку кімнат#33% шанс, що винагороди не буде#{{GreedMode}} Не працює в Режимі Жадібності", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% шанс заблокувати ворожу атаку", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Блокує ворожі постріли зі сторону, у яку стріляє персонаж", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Зрідка стріляє лазером на додачу до основної атаки персонажа", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Персонаж випускає одночасно 2 сльози", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Відображає локацію секретної кімнати на карті", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Компаньйони наносять подвійну шкоду", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Сині павуки та мухи наносять подвійну шкоду", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Дозволяє обирати між 2 предметами після перемоги над босом", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Всі бомби-розхідники стають подвійними", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Перетворює всі пігулки на карти#Створює 1 карту", -- Starter Deck
	-- Full old Desc: "{{Card}} Персонаж може тримати 2 карти#Перетворює всі пігулки на карти#Створює 1 карту"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Перетворює всі карти на пігулки#Створює 1 пігулку", -- Little Baggy
	-- Full old Desc: "{{Pill}} Персонаж може тримати 2 пігулки#Перетворює всі карти на пігулки#Створює 1 пігулку"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Bomb}} +5 бомб", -- Hot Bombs
	-- Full old Desc: "{{Burning}} Бомби персонажа підпалюють землю на місці вибуху#{{Bomb}} +5 бомб"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{Warning}} Вибух завдає шкоди персонажу", -- Fire Mind
	-- Full old Desc: "{{Burning}} Сльози персонажа підпалюють ворогів#Шанс, що сльоза вибухне при контакті з ворогом#{{Luck}} 100% шанс вибуху при Удачі 13#{{Warning}} Вибух завдає шкоди персонажу"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Реролить усі предмети та характеристики персонажа при піднятті цього предмета та на початку кожного наступного поверху", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} Імунітет до проклять", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} Імунітет до проклять#{{BlackHeart}} +1 Чорне серце#{{AngelDevilChance}} +15% шанс появи кімнат Диявола/Ангела"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ Сльози наносять менше шкоди з відстанню", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +100% Шкоду збільшено#↓ Сльози наносять менше шкоди з відстанню"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Коли здоров'я персонажа зменшується до 1 серця, наносить шкоду усім персонажам в кімнаті", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Чорне серце#Коли здоров'я персонажа зменшується до 1 серця, наносить шкоду усім персонажам в кімнаті"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Атакує ворогів, коли персонажу завдають шкоди", -- Smart Fly
	-- Full old Desc: "Орбіталь#Атакує ворогів, коли персонажу завдають шкоди#Наносить 22.5 шкоди за секунду"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "10% шанс нанести шкоду всім ворогам у кімнаті, коли ворожа сльоза попадає в цього компаньйона", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Залишає слід зі сповільнювальної рідини#Створює 1-2 дружніх павуків після зачистки кімнати", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Стріляє лазерами#Рухається в бік стрільби персонажа", -- Robo-Baby 2.0
	-- Full old Desc: "Стріляє лазерами#Наносить 3.5 шкоди за постріл#Рухається в бік стрільби персонажа"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Створює синіх мух, коли персонаж стріляє", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Залишає слід з рідини, що наносить 6 шкоди за секунду", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Переслідує ворогів#{{HalfHeart}} Персонаж відновлює половинку серця за кожного ворога, вбитого П'явкою", -- Leech
	-- Full old Desc: "Переслідує ворогів#{{HalfHeart}} Персонаж відновлює половинку серця за кожного ворога, вбитого П'явкою#Наносить 3.2 шкоди за секунду"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Створює випадковий розхідник кожні кілька кімнат", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Дружня вибухова муха#{{Warning}} Вибух може завдати шкоди персонажу", -- BBF
	-- Full old Desc: "Дружня вибухова муха#Вибух наносить 60 шкоди#{{Warning}} Вибух може завдати шкоди персонажу"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Летить в бік стрільби персонажа#Вибухає, коли влучає у ворога", -- Bob's Brain
	-- Full old Desc: "Летить в бік стрільби персонажа#Вибухає, коли влучає у ворога#Вибух наносить 60 шкоди і може вразити персонажа"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Для поточної кімнати створює орбіталя середнього радіуса при отриманні персонажем шкоди", -- Best Bud
	-- Full old Desc: "Для поточної кімнати створює орбіталя середнього радіуса при отриманні персонажем шкоди#Орбіталь наносить 75 шкоди за секунду"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Collectible118}} Компаньйон з заряджуваною атакою лазера Сірки", -- Lil Brimstone
	-- Full old Desc: "{{Collectible118}} Компаньйон з заряджуваною атакою лазера Сірки#Наносить 31.5 шкоди за секунду"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Персонаж стає невразливим#Створює компаньйона-серце, що рухається за персонажем#{{Warning}} Якщо серцю завдають шкоди, персонаж втрачає здоров'я", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Переслідує та лякає ворогів", -- Lil Haunt
	-- Full old Desc: "Переслідує та лякає ворогів#Наносить 4 шкоди за секунду"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Збирає червоні серця з підлоги#Створює серце Душі чи павука за кожні 1.5 червоні серця", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Великий орбіталь", -- Big Fan
	-- Full old Desc: "Великий орбіталь#Наносить 30 шкоди за секунду"
	-- English: "Large orbital"

	[C_ID .. 280] = "Випадково створює синіх павуків у ворожих кімнатах", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Компаньйон-приманка#Вороги переслідують його замість персонажа", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Дозволяє персонажу стрибати через провалля та перешкоди", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Реролить усі розхідники та п'єдестальні предмети в кімнаті, а також усі предмети в інвентарі персонажа", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Реролить усі предмети в інвентарі персонажа", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Реролить всіх ворогів у кімнаті", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Активує ефект карти з рук персонажа без її використання", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Метає червоний вогонь#Вогонь зникає, коли наносить шкоду або блокує постріли 5 разів", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} При піднятті червоних сердець з повним здоров'ям, Банка зберігає до 4 з них у собі#Використання предмету викидає усі зібрані серця", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Перетворює усіх ворогів-не-босів на купки лайна#Миттєво вбиває какашкових босів та ворогів", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "Випускає лазери {{Collectible118}} Сірки на всі 4 сторони", -- Head of Krampus
	-- Full old Desc: "Випускає лазери {{Collectible118}} Сірки на всі 4 сторони"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Відштовхує ворогів та снаряди поблизу", -- Butter Bean
	-- Full old Desc: "Відштовхує ворогів та снаряди поблизу#10% шанс, що предмет перетвориться на сильніший {{Collectible484}}Стривай, Що? при зміні на інший активний предмет і назад"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Наносить 2x Шкоди персонажа усім ворогам в кімнаті#{{Warning}} Ціна - 1 монетка за використання", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Конвертує 2 Синіх/Чорних серця в 1 Контейнер червоних сердець", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "↑ {{Speed}} Поступово підвищує швидкість персонажа у ворожій кімнаті#При Швидкості 2, персонаж стає невразливим та наносить контактну шкоду#Після цього, бонус швидкості зникає", -- Taurus
	-- Full old Desc: "↓ {{Speed}} -0.3 Швидкість знижено#↑ {{Speed}} Поступово підвищує швидкість персонажа у ворожій кімнаті#При Швидкості 2, персонаж стає невразливим та наносить контактну шкоду#Після цього, бонус швидкості зникає"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Дотик до ворогів наносить їм контактну шкоду", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Швидкість збільшено#Дотик до ворогів наносить їм контактну шкоду"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Отримання шкоди зменшує всю подальшу шкоду у цій кімнаті до половинки серця", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 серця Душі#Отримання шкоди зменшує всю подальшу шкоду у цій кімнаті до половинки серця"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Розмір збільшено", -- Leo
	-- Full old Desc: "Персонаж може топтати перешкоди на шляху#Розмір збільшено"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "При отриманні шкоди, персонаж може стати тимчасово невразливим#{{Luck}} 100% шанс при Удачі 10#{{Pill}} Перетворює погані пігулки на хороші", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Балансує характеристики персонажа#Подальші зміни характеристик будуть рівномірно розподілені по всіх характеристиках", -- Libra
	-- Full old Desc: "+6 монет, ключів та бомб#Балансує характеристики персонажа#Подальші зміни характеристик будуть рівномірно розподілені по всіх характеристиках"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Персонаж залишає слід з рідини#Рідина наносить 6 шкоди за секунду", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "Збільшує відштовхування", -- Pisces
	-- Full old Desc: "↑ {{Tears}} -1 Затримка між Слізьми#↑ {{Tearsize}} x1.25 розмір сльози збільшено#Збільшує відштовхування"
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "{{Player12}} При смерті, персонаж воскресає як Темний Юда з 2x множником Шкоди", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "Усі червоні серця відновлюють вдвічі більше здоров'я", -- Maggy's Bow
	-- Full old Desc: "↑ {{Heart}} +1 Контейнер червоних сердець#{{Heart}} Відновлює 1 червоне серце#Усі червоні серця відновлюють вдвічі більше здоров'я"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Поглинає перший удар у кімнаті", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Персонаж може топтати перешкоди в себе на шляху", -- Thunder Thighs
	-- Full old Desc: "↑ {{Heart}} +1 Контейнер червоних сердець#↓ {{Speed}} -0.4 Швидкість знижено#Персонаж може топтати перешкоди в себе на шляху"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Сльози персонажа притягують ворогів, розхідники та брелки", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "{{Warning}} Отримання шкоди при частково зарядженій атаці, телепортує персонажа до випадкової кімнати", -- Cursed Eye
	-- Full old Desc: "Заряджувана атака хвилею з 4 сліз#{{Warning}} Отримання шкоди при частково зарядженій атаці, телепортує персонажа до випадкової кімнати#{{Collectible260}} Чорна Свічка прибирає ефект телепортації"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Сльози персонажа залишають мокрий слід на підлозі#Рідина наносить 30 шкоди за секунду", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Компаньйон ближнього бою", -- Gemini
	-- Full old Desc: "Компаньйон ближнього бою#Наносить 6 контактної шкоди за секунду"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Хаотично літає по кімнаті#Стріляє у бік персонажа#{{Damage}} Наносить таку ж шкоду, як і персонаж", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Контрольована муха", -- ???'s Only Friend
	-- Full old Desc: "Контрольована муха#Наносить 37.5 контактної шкоди за секунду"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Куля на ланцюзі, яка може руйнувати камені", -- Samson's Chains
	-- Full old Desc: "Куля на ланцюзі, яка може руйнувати камені#Наносить 10.7 контактної шкоди за секунду"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Мімікрує під одного з компаньйонів персонажа#Наносить подвійну шкоду цього компаньйона", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Випускає 8 сліз в усі сторони#Сльози мають ефекти сліз персонажа#Перезаряджається при стрільбі", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Телепортує персонажа до {{TreasureRoom}} Скарбниці, {{SecretRoom}} Секретки, {{SuperSecretRoom}} Суперсекретки чи {{ErrorRoom}} Я - ПОМИЛКА", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Голова персонажа перетворюється на стаціонарного компаньйона#Тіло контролюється окремо", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Затисніть кнопку активації, щоб розрядити предмет#Персонаж стає невразливим, коли полоска заряду порожня#{{Warning}} Не утримуйте кнопку активації надто довго - персонаж почне отримувати шкоду", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Якщо у персонажа половинка червоного серця чи менше, при отриманні шкоди він тимчасово стає невразливим", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Якщо у персонажа половинка червоного серця чи менше, при отриманні ним шкоди, предмет наносить шкоду всім ворогам у кімнаті", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Замінює атаку персонажа на одну велику контрольовану сльозу", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "У сліз з'являється аура, що наносить x4.5 шкоди за секунду", -- Godhead
	-- Full old Desc: "Самонавідні сльози#↑ {{Damage}} +0.5 Шкоду збільшено#↑ {{Range}} +1.2 Дальність збільшено#↓ {{Tears}} -0.3 Темп Стрільби знижено#↓ {{Shotspeed}} -0.3 Швидкість Стрільби знижено#↑ +0.8 Висота Польоту Сльози#У сліз з'являється аура, що наносить x4.5 шкоди за секунду"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} При смерті, ви воскресаєте за Лазаря (Воскреслого)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Відкриває повну карту кожного поверху", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Навколо персонажа з'являється аура, що відштовхує ворогів та снаряди", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 серця Душі#Навколо персонажа з'являється аура, що відштовхує ворогів та снаряди"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Сповільнює час у кожній 4 кімнаті#13% шанс прискорити кімнату", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Метальний бумеранг#Оглушує ворогів та наносить 2x шкоди персонажа#Може захоплювати та притягувати розхідники", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Дублює всі п'єдестали, розхідники, скрині та брелки в кімнаті", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Активує ефект пігулки з інвентарю персонажа без її використання", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} Отруює ворогів при вході в кімнату#Вбиті вороги залишають калюжу токсичної рідини#Рідина наносить 30 шкоди за секунду", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "На кілька секунд заморожує всіх ворогів у кімнаті#Наносить 5 шкоди та отруює всіх ворогів поблизу#Посилає кам'яну хвилю в напрямку руху персонажа#Хвиля знищує перешкоди та може відкрити прохід у Секретну кімнату", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "↓ Стрільба з гармати зменшує здоров'я персонажа до половинки серця#Випускає гігантську пронизуючу спектральну сльозу, що наносить 10x шкоди", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Бомби вибухають в хрестоподібному шаблоні", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 бомб#Бомби вибухають в хрестоподібному шаблоні"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Використання активного предмета активує його ефект двічі", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Дублює всіх компаньйонів для поточної кімнати#Створює {{Collectible113}}Малюка Диявола, якщо в персонажа немає компаньйонів", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Спектральні сльози", -- The Wiz
	-- Full old Desc: "Персонаж одночасно випускає 2 сльози по діагоналі#Спектральні сльози"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Збільшує віддачу", -- 8 Inch Nails
	-- Full old Desc: "↑ {{Damage}} +1.5 Шкоду збільшено#Збільшує віддачу"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Стріляє слізьми з такими ж характеристиками й ефектами, що і в персонажа", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Стріляє слізьми з такими ж характеристиками й ефектами, що і в персонажа#Стріляє вдвічі повільніше за інших компаньйонів", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Створює випадковий розхідник кожні кілька кімнат", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Блокує та притягує на себе ворожі снаряди#Якщо Захисник заблокує 10 снарядів в 1 кімнаті, ви отримаєте Вічне серце", -- Sworn Protector
	-- Full old Desc: "Орбіталь#Наносить 105 контактної шкоди за секунду#Блокує та притягує на себе ворожі снаряди#Якщо Захисник заблокує 10 снарядів в 1 кімнаті, ви отримаєте Вічне серце"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Муха-орбіталь середнього радіуса", -- Friend Zone
	-- Full old Desc: "Муха-орбіталь середнього радіуса#Наносить 45 контактної шкоди за секунду"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Рухається вздовж стін/перешкод", -- Lost Fly
	-- Full old Desc: "Рухається вздовж стін/перешкод#Наносить 105 контактної шкоди за секунду"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "При вбивстві ворога бомбою, з'являється синій павук#Бомби персонажа прилипають до ворогів", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 бомб#При вбивстві ворога бомбою, з'являється синій павук#Бомби персонажа прилипають до ворогів"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Стрільба в одному напрямку поступово зменшує затримку між пострілами аж до -200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "Сльози можуть вилітати з одної сторони кімнати та з'являтися з іншої", -- Continuum
	-- Full old Desc: "↑ {{Range}} +2.25 Дальність збільшено#↑ +1.5 Висота Польоту Сльози#Спектральні сльози#Сльози можуть вилітати з одної сторони кімнати та з'являтися з іншої"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "При отриманні персонажем шкоди, з'являється 6 троль-бомб#Троль-бомби успадковують ефекти бомб персонажа", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Кожні 30 секунд у ворожій кімнаті компаньйон може:#Створити батарейку (максимум 2 на кімнату)#Додати один заряд до активного предмета (максимум 2 на кімнату)#Тимчасово заморозити всіх ворогів в кімнаті", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ {{Damage}} Послідовні влучання слізьми в ворогів дають +25% Шкоди(максимум +100%)#Промах має шанс скинути множник", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Luck}} 50% шанс при Удачі 9", -- Holy Light
	-- Full old Desc: "10% шанс вистрілити Святими слізьми, які створюють промінь світла при влучанні#Промінь наносить 4x шкоди персонажа#{{Luck}} 50% шанс при Удачі 9"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Імунітет до вибухів#Імунітет до кам'яних хвиль та ударів ногами Мами та Сатани#25% шанс відбити ворожий постріл", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "При покупці предметів у магазині, новий асортимент з'являється миттєво", -- Restock
	-- Full old Desc: "Створює 3 випадкові розхідники#При покупці предметів у магазині, новий асортимент з'являється миттєво"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Ворожі павуки більше не завдають шкоди персонажу", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "{{Collectible209}} Утримуйте кнопки стрільби 2.35 секунди, щоб створити підпалену Дупну бомбу", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Двері, що відкриваються 1 ключем, тепер відкриваються монетами", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 монет#Двері, що відкриваються 1 ключем, тепер відкриваються монетами"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Дає випадковий предмет на початку наступного забігу", -- Eden's Blessing
	-- Full old Desc: "↑ {{Tears}} +0.7 Темп Стрільби збільшено#Дає випадковий предмет на початку наступного забігу"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Киньте у ворога, щоб спіймати його#Використайте М'яч ще раз, щоб звільнити ворога#Звільнений ворог стає вашим компаньйоном", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Розділяє усі сльози персонажа на екрані на кільця з 6 сліз", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Компаньйон, що запускається і рикошетить по кімнаті зі швидкістю, що залежить від його заряду#Наносить 5-90 контактної шкоди за секунду, залежно від швидкості", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Збирає монетки поблизу#Росте після підбору 6, 12 та 24 монет#Рівень2: Шанс створити розхідник/предмет після зачистки кімнати#Рівень3: Випускає сльози, що можуть створити монетку при влучанні#Рівень4: Переслідує ворогів, раптово гублячи підпалені бомби; може створити монетку або предмет", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Реролить усі перешкоди на інші випадкові перешкоди (напр. купки лайна, вази, TNT, червоні купки лайна, кам'яні блоки тощо)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Компаньйон, якого оточує аура світла, що сповільнює ворогів та їхні снаряди", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Збирає ключі та створює випадкові скрині", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Створює випадкову руну кожні 5-6 кімнат", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Стріляє слізьми з ефектами {{Collectible182}}Святого Серця", -- Seraphim
	-- Full old Desc: "Стріляє слізьми з ефектами {{Collectible182}}Святого Серця#Наносить 10 шкоди за постріл"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} При отриманні шкоди, персонаж причаровує усіх ворогів у кімнаті", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Ефект випадкового знаку зодіаку на кожен поверх", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% шанс вистрілити отруйною сльозою#{{Poison}} Ви отруюєте ворогів при дотику#{{BlackHeart}} Отруєні вороги можуть створити Чорне серце при смерті", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +0.3 Висота Польоту Сльози", -- Marked
	-- Full old Desc: "Персонаж автоматично стріляє в бік червоної мітки на землі#↑ {{Tears}} +0.7 Темп Стрільби збільшено#↑ {{Range}} +3.15 Дальність збільшено#↑ +0.3 Висота Польоту Сльози"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} Сльози персонажа замінюються на заряджуване лазерне кільце#Розмір кільця збільшується залежно від заряду", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Створює 2 портали для подорожі між ними#Портали можна розмістити в різних кімнатах", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ +0.5 Висота Польоту Сльози", -- Tractor Beam
	-- Full old Desc: "Сльози персонажа летять строго вздовж променя світла перед ним#↑ {{Tears}} +0.5 Темп Стрільби збільшено#↑ {{Range}} +5.25 Дальність збільшено#↑ {{Shotspeed}} +0.16 Швидкість Стрільби збільшено#↑ +0.5 Висота Польоту Сльози"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Сльози можуть зменшувати ворогів#Зменшених ворогів можна розтоптати, пройшовши по них", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "Персонаж тримає спис перед собою#Спис наносить 2x шкоди персонажа і може злякати ворогів при контакті", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% шанс вистрілити липкими вибуховими слізьми#Липкі вибухові сльози не наносять шкоди при влучанні та вибухають через кілька секунд", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Всі предмети обираються з випадкових предметних пулів", -- Chaos
	-- Full old Desc: "Всі предмети обираються з випадкових предметних пулів#Створює 1-6 випадкових розхідників"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Відображає шкоду від пострілу та полоску здоров'я ворогів#Накладає випадкові ефекти на ворогів при дотику#Випадково створює батарейки", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "При ударі, 10% шанс пукнути та причарувати, отруїти або відштовхнути ворогів", -- Farting Baby
	-- Full old Desc: "Блокує ворожі снаряди#При ударі, 10% шанс пукнути та причарувати, отруїти або відштовхнути ворогів"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Літає по кімнаті", -- GB Bug
	-- Full old Desc: "Літає по кімнаті#Наносить 120 шкоди за секунду та накладає випадкові ефекти на ворогів при дотику"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Множить значення Шкоди, Темпу Стрільби, Дальності та Швидкості персонажа на випадкове значення в діапазоні 0.5-2x#Множники змінюються при кожній активації", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Покращує одну з характеристик персонажа залежно від кольору аури#Отримання шкоди прибирає ефект і змінює колір аури для наступних кімнат#{{ColorRed}}Червона{{CR}} = {{Damage}} +4 Шкоди#{{ColorBlue}}Синя{{CR}} = {{Tears}} -4 Затримки між Слізьми#{{ColorYellow}}Жовта{{CR}} = {{Speed}} +0.5 Швидкості#{{ColorOrange}}Оранжева{{CR}} = {{Range}} +7.5 Дальності, +1 Висота Польоту Сльози", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "При отриманні шкоди, навколо персонажа з'являється чорне кільце Сірки#{{BlackHeart}} Вороги, вбиті кільцем, можуть створити Чорне серце", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{Blank}} Коли у персонажа немає Червоних сердець:#Політ#Кожні 40 секунд у ворожій кімнаті дає 10-тисекундний щит", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 Чорні серця#{{Blank}} Коли у персонажа немає Червоних сердець:#Політ#Кожні 40 секунд у ворожій кімнаті дає 10-тисекундний щит"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "↑ {{Damage}} +0.5 Шкоди за кожного ворога, вбитого у поточній кімнаті#Максимум +5 Шкоди після 10 вбивств", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Після отримання шкоди 15 разів, створює перманентного компаньйона-демона#Після двох компаньйонів, наступні будуть з'являтися після 30 ударів#Максимум 4 компаньйони", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "При підйомі 15 сердець з'являється перманентний компаньйон-ангел#Максимум 5 компаньйонів#Після отримання 5 компаньйонів, починає створювати серця Душі на тих же умовах", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Дозволяє обирати між 2 предметами у Скарбницях", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "{{Blank}} Якщо у персонажа повністю заповнені усі контейнери червоних сердець (або вони повністю відсутні):#{VAR:EFFECTLIST}#{{Blank}}", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 серця Душі#{{Blank}} Якщо у персонажа повністю заповнені усі контейнери червоних сердець (або вони повністю відсутні):#↑ {{Damage}} +100% Шкоду збільшено#↑ {{Range}} +5.25 Дальність збільшено#↑ +0.5 Висота Польоту Сльози#↓ {{Shotspeed}} -0.3 Швидкість Стрільби знижено#{{Blank}}#Отримання шкоди прибирає ефект для поточної кімнати"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Дозволяє персонажу тримати 2 карти/пігулки/руни", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Літає по кімнаті, оточений аурою, що наносить 129% шкоди персонажа кожну секунду#↑ {{Damage}} +50% Шкоди, коли персонаж знаходиться в аурі", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Кожна зі сліз персонажа отримує унікальний ефект", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Телепортує персонажа до кімнати, що ще не була зачищеною", -- Teleport 2.0
	-- Full old Desc: "Телепортує персонажа до кімнати, що ще не була зачищеною#Ієрархія: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Пройдіть по колу, щоб зобразити пентаграму, що наносить ворогам 10 шкоди за ігровий тік", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} Причаровує та наносить 5 шкоди всім ворогам поблизу", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Повертає персонажа до попередньої кімнати та скасовує всі його дії, виконані в кімнаті, де було активовано Годинник", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Оточує персонажа великим німбом, що наносить контактну шкоду, рівну шкоді персонажа#Шанс відбити ворожі снаряди", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "З шансом 33% розхідники будуть замінені на мішечок#Створює мішечок", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Створює потік світла перед персонажем#Світло сповільнює ворогів та їх снаряди", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Створює пересувну бочку з динамітом#Використання предмету вдруге в тій самій кімнаті дистанційно підриває бочку", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} 5% шанс, що при влучанні сльозою у ворога, випаде монетка", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Стріляє у ворогів поблизу, наносячи шкоду, рівну шкоді персонажа", -- Papa Fly
	-- Full old Desc: "Повторює рухи персонажа з затримкою на 1 секунду#Стріляє у ворогів поблизу, наносячи шкоду, рівну шкоді персонажа"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Сльози, що пролітають крізь нього, подвоюються та отримують бонус до дальності та швидкості польоту", -- Multidimensional Baby
	-- Full old Desc: "Повторює рухи персонажа з затримкою на 2 секунди#Сльози, що пролітають крізь нього, подвоюються та отримують бонус до дальності та швидкості польоту"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "При вибуху, бомби персонажа з 25% шансом можуть створити випадковий розхідник та з 15% шансом причарувати ворогів", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 бомб#При вибуху, бомби персонажа з 25% шансом можуть створити випадковий розхідник та з 15% шансом причарувати ворогів"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "При отриманні персонажем шкоди, на всіх ворогів накладається ефект страху та з'являється дружній чорний монстр", -- My Shadow
	-- Full old Desc: "При отриманні персонажем шкоди, на всіх ворогів накладається ефект страху та з'являється дружній чорний монстр#Монстр наносить 5 контактної шкоди за секунду"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "При вбивстві ворога, у банці з'являється 1 синя муха#Максимум 20 мух у банці#Використання предмета випускає всіх мух", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Стріляє одночасно 4 слізьми навхрест", -- Lil Loki
	-- Full old Desc: "Стріляє одночасно 4 слізьми навхрест#Наносить 3.5 шкоди за постріл"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} При отриманні шкоди, ви отримуєте бонус до Темпу Стрільби на поточну кімнату", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Перезапускає кімнату та відновлює ворогів у ній#Може бути використаний для отримання декількох нагород з однієї кімнати#Якщо використаний після бою із Жадібністю, реролить кімнату на нормальний Магазин/Секретку", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "↑ +2 Висота Польоту Сльози", -- Kidney Stone
	-- Full old Desc: "Персонаж раптово перестає стріляти та заряджає атаку, що випускає потік сліз та нирковий камінь#↓ -0.2 Швидкість зменшено#↓ -17 Дальність зменшено down#↑ +2 Висота Польоту Сльози"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "Протягом 15 секунд випускає гігантський сірчаний лазер Мегасатани#Лазер діє між кімнатами та поверхами", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "{{Blank}} Коли у вас рівно 1 червоне серце:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "{{Blank}} Коли у вас рівно 1 червоне серце:#↑ {{Range}} +1.5 Дальність збільшено#↑ {{Tears}} +0.75 Темп Стрільби збільшено#↑ {{Shotspeed}} +0.2 Швидкість Стрільби збільшено#↑ +1 Висота Польоту Сльози#Не працює для персонажів, що не можуть мати червоних сердець"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Персонаж випускає град зі сліз кожен 15 постріл#Сльози із граду наносять подвійну шкоду", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} Собака гавкає у кімнатах з проходом до криївки під каменями", -- Dog Tooth
	-- Full old Desc: "↑ {{Damage}} +0.3 Шкоду збільшено#↑ {{Speed}} +0.1 Швидкість збільшено#{{SecretRoom}} Вовк виє у кімнатах, що межують із Секреткою/Суперсекреткою#{{LadderRoom}} Собака гавкає у кімнатах з проходом до криївки під каменями"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "Під час стрільби, персонажа оточує зелена аура, що отруює ворогів", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Стрільба без паузи протягом 7.5 секунд створює хмарку#Хмаринка наносить шкоду персонажа 5 разів за секунду#Хмаринка існує протягом 15 секунд і може переміщуватись при стрільбі в неї", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "При отриманні шкоди:#{{Heart}} 25% шанс появи червоного серця#{{Collectible214}} 10% шанс отримати ↑ +5 Дальності та залишати кривавий слід у поточній кімнаті", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} 25% шанс відбити ворожі снаряди й перетворити їх на сльози з ефектом оглушення", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 серце Душі#{{Confusion}} 25% шанс відбити ворожі снаряди й перетворити їх на сльози з ефектом оглушення"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Кожні 20 сліз, персонаж випускає сльозу-монетку, що наносить подвійну шкоду#Вороги, в яких влучає монетка, перетворюються на золотих#При вбивстві, з золотих ворогів випадає 1-4 монетки#Такий постріл коштує вам 1 монету", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Подвоює ефекти всіх карт", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Створює випадкову картку#{{Card}} Подвоює ефекти всіх карт"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "При отриманні шкоди, персонаж випускає 10 сліз навколо#Сльози наносять шкоду персонажа + 25", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "↑ +1 Висота Польоту Сльози", -- Compound Fracture
	-- Full old Desc: "Сльози розлітаються на 1-3 дрібні уламки кісток при влучанні в будь-що#↑ +1.5 Дальність збільшено#↑ +1 Висота Польоту Сльози"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Дозволяє персонажу одночасно тримати 2 картки, руни чи пігулки#Створює карту, руну чи пігулки", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "Створює щасливу монетку", -- Dad's Lost Coin
	-- Full old Desc: "↑ {{Range}} +1.5 Дальність збільшено#↑ +1 Висота Польоту Сльози#Створює щасливу монетку"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% шанс проігнорувати отриману шкоду", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 серце Душі#20% шанс проігнорувати отриману шкоду"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Дозволяє персонажу одночасно тримати 2 брелки", -- Belly Button
	-- Full old Desc: "{{Trinket}} Дозволяє персонажу одночасно тримати 2 брелки#{{Trinket}} Створює випадковий брелок"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% шанс вистрілити липкими шмарклями", -- Sinus Infection
	-- Full old Desc: "20% шанс вистрілити липкими шмарклями#Шмарклі раз в секунду наносять шкоду, рівну шкоді персонажа, та прилипають на 60 секунд"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% шанс вистрілити оглушливими слізьми#Робить екран трішки темнішим", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "Кокони створюють калюжу сповільнювальної рідини та синього павука чи муху при влучанні", -- Parasitoid
	-- Full old Desc: "15% шанс вистрілити павучим коконом#{{Luck}} 50% шанс при Удачі 5#Кокони створюють калюжу сповільнювальної рідини та синього павука чи муху при влучанні"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Влучання у ворога перетворює сльозу на самонавідну та подвоює її шкоду", -- Eye of Belial
	-- Full old Desc: "↑ {{Range}} +1.5 Дальність збільшено#↑ +1 Висота Польоту Сльози#Пронизуючі сльози#Влучання у ворога перетворює сльозу на самонавідну та подвоює її шкоду"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Сльози персонажа можуть руйнувати камені та відкривати двері", -- Sulfuric Acid
	-- Full old Desc: "↑ {{Damage}} +0.3 Шкоду збільшено#Сльози персонажа можуть руйнувати камені та відкривати двері"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "З ворогів-чемпіонів випадає розхідник, якого персонаж потребує найбільше", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 серця Душі#З ворогів-чемпіонів випадає розхідник, якого персонаж потребує найбільше"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Дозволяє персонажу стріляти в будь-якому напрямку", -- Analog Stick
	-- Full old Desc: "↑ {{Tears}} +0.3 Темп Стрільби збільшено#Дозволяє персонажу стріляти в будь-якому напрямку"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} Перший вбитий у кімнаті ворог вибухає та отруює всіх ворогів поблизу", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Постійно наносить 10% шкоди персонажа в напрямку, куди він вказує", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Залишає за собою мокрий слід#Рідина наносить 6 шкоди за секунду#Ворогів, що вступили в рідину, з певним шансом може вдарити промінь святого світла", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Літає по кімнаті#Перестає рухатись, коли персонаж стріляє#Блокує ворожі снаряди, поки не рухається", -- Hushy
	-- Full old Desc: "Літає по кімнаті#Наносить 2 контактної шкоди за ігровий тік#Перестає рухатись, коли персонаж стріляє#Блокує ворожі снаряди, поки не рухається"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Кожна сльоза наносить по 3.5 шкоди", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Заряджає атаку в стилі дробовика, аналогічно до {{Collectible229}} Легені Монстро#Кожна сльоза наносить по 3.5 шкоди"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Інші компаньйони рухаються слідом за ним#Перестає рухатись, коли персонаж стріляє#Телепортується назад до персонажа, коли той перестає стріляти", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Дуже повільно повзе вперед", -- Big Chubby
	-- Full old Desc: "Дуже повільно повзе вперед#Блокує ворожі постріли#Наносить 40.5 контактної шкоди за секунду"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "Вбиває персонажа через 3 секунди після активації", -- Plan C
	-- Full old Desc: "Наносить 9,999,999 шкоди усім ворогам#Вбиває персонажа через 3 секунди після активації"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "Дублює 1 випадковий розхідник у поточній кімнаті", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "Поглинає усі п'єдестальні предмети в кімнаті#Активні предмети: їх ефекти активуються при поглинанні та при кожній наступній активації Порожнечі#↑ Пасивні предмети: покращує дві випадкові характеристики персонажа", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Заморожує ворогів у кімнаті, допоки персонаж не вистрілить#Дотик до замороженого ворога все ще наносить шкоду персонажу#Вороги розморожуються через 30 секунд", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} Поглинає брелок персонажа та дає перманентний ефект від цього брелка#Збільшує частоту появи брелків", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Перетворює розхідники на синіх мух чи павуків#Подвоює кількість ваших синіх мух та павуків#Створює 1 синю муху чи павука, якщо у персонажа немає жодного", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "Ламає усі спрайти та музику в кімнаті", -- Dataminer
	-- Full old Desc: "↑ Покращення випадкової характеристики#↓ Погіршення іншої випадкової характеристики#Випадковий ефект сліз для поточної кімнати#Ламає усі спрайти та музику в кімнаті"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Змінює вашого персонажа на випадкового іншого#Забирає останній отриманий предмет", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Впливає на весь поверх#Підриває всі перешкоди#{VAR:EFFECTLIST}#Відкриває двері до Бос Рашу, Хаша та всі секретні кімнати#Якщо у вас є золота бомба, при активації натомість буде поглинута вона, дозволяючи застосувати Маму Мега ще раз", -- Mama Mega!
	-- Full old Desc: "Впливає на весь поверх#Підриває всі перешкоди#Наносить 200 шкоди всім ворогам#Відкриває двері до Бос Рашу, Хаша та всі секретні кімнати#Якщо у вас є золота бомба, при активації натомість буде поглинута вона, дозволяючи застосувати Маму Мега ще раз"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "При використанні, відштовхує ворогів та створює кам'яну хвилю довкола персонажа#Хвиля може відкривати секретні кімнати та ламати камені", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% шанс подвоїти всі предмети, розхідники та скрині в кімнаті#50% шанс прибрати усі предмети/розхідники з кімнати та створити 1 монетку", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Завдає болю персонажу, не забираючи здоров'я#Активує будь-які \"при-ударні\" ефекти предметів", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Ефект випадкового предмета для поточної кімнати", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Активує ефект випадкового Кубика при кожному використанні", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Створює 2 випадкові предмети залежно від пулу поточної кімнати#При першому підйомі не має зарядів", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Використання пігулок отруює всіх ворогів у кімнаті", -- Acid Baby
	-- Full old Desc: "{{Pill}} Створює випадкову пігулку кожні 3 кімнати#{{Poison}} Використання пігулок отруює всіх ворогів у кімнаті"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Позначає розміщення {{SecretRoom}} Секретних кімнат, каменів з мітками та входи до криївок", -- YO LISTEN!
	-- Full old Desc: "↑ {{Luck}} +1 Удачу збільшено#Позначає розміщення {{SecretRoom}} Секретних кімнат, каменів з мітками та входи до криївок"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Для кожного пустого контейнера червоних сердець:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Для кожного пустого контейнера червоних сердець:#↑ +0.2 Шкоду збільшено"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Сльози 1-2 електричні іскри при влучанні#Іскри наносять половину шкоди персонажа", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Шанс вистрілити червоним вогнем, що блокує ворожі снаряди та наносить контактну шкоду#Вогонь зникає після нанесення шкоди чи блокування снарядів 5 разів", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Голки миттєво вбивають звичайних ворогів, розриваючи їх на 10 сліз#Голки наносять 3x шкоди босам", -- Euthanasia
	-- Full old Desc: "3.33% шанс вистрілити голкою#{{Luck}} 100% шанс при Удачі 15#Голки миттєво вбивають звичайних ворогів, розриваючи їх на 10 сліз#Голки наносять 3x шкоди босам"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "При вході у кімнату, накладає на ворогів ефект спантеличення, що спадає після першого пострілу персонажа", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Створює двері до Ангела та Диявола, якщо хоч одні з них мали з'явитись#При вході в одні з дверей, інші зникають", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "Додає 1 Контейнер червоних сердець за кожні 25 монет, зібраних після отримання Стравоходу#{{Player14}} Хранитель може отримати додаткові Монетки-серця", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Стріляючи, персонаж раптово створює білу рідину, що наносить подвійну шкоду#При отриманні шкоди, персонаж вистрілює сльозою з білої рідини", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "Створює муху-турель, що стріляє у ворогів#Кожен постріл наносить 2 шкоди", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "При вході у ворожу кімнату є шанс створити причарованого ворога", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Удар ворогів у спину наносить подвійну шкоду та спричиняє кровотечу, що наносить 10% шкоди від максимального здоров'я ворога кожні 5 секунд", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Наносить шкоду персонажа + 10% від максимального здоров'я ворога всім ворогам у кімнаті#{{HalfHeart}} При нанесенні шкоди соломинкою, з певним шансом може з'явитися половинка серця#{{HalfSoulHeart}} Якщо у персонажа немає червоних сердець, натомість будуть з'являтися половинки синіх", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Орбіталь, що спричиняє кровотечу, яка наносить 10% шкоди від максимального здоров'я ворога кожні 5 секунд#При контакті, наносить 3x шкоди персонажа за секунду#Не блокує ворожі снаряди", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Орбіталь, що стріляє у випадковому напрямку кожні 2 секунди#Не блокує ворожих снарядів", -- Bloodshot Eye
	-- Full old Desc: "Орбіталь, що стріляє у випадковому напрямку кожні 2 секунди#Наносить 3.5 шкоди за постріл#Наносить 30 контактної шкоди за секунду#Не блокує ворожих снарядів"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Створює випадкову дружню \"несамовиту\" версію боса для поточної кімнати", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Обертає випадкового ворога довкола персонажа, допоки ворог не помре", -- Angry Fly
	-- Full old Desc: "Обертає випадкового ворога довкола персонажа, допоки ворог не помре#Наносить 30 контактної шкоди за секунду іншим ворогам"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Метальна чорна діра, що засмоктує все довкола#Наносить 0.4 шкоди кожен ігровий тік#Знищує камені поблизу#Існує 6 секунд", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Випадково причаровує/лякає ворогів#При отриманні шкоди, персонаж з випадковим шансом може створити веселкове лайно", -- Bozo
	-- Full old Desc: "↑ +0.1 Шкоду збільшено#+1 серце Душі#Випадково причаровує/лякає ворогів#При отриманні шкоди, персонаж з випадковим шансом може створити веселкове лайно"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Змушує деяких ворогів та снаряди раптово завмирати на випадкові проміжки часу#25% шанс подвоїти нагороду за зачистку кімнати", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Створює випадковий предмет з пулу поточної кімнати#Шанс натомість створити {{Collectible132}} Кусок Вугілля чи {{Collectible36}} Лайно", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Створює зрошувач, що стріляє слізьми з ефектами персонажа навколо себе", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Прибирає затримку між розміщенням бомб", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 бомб#Прибирає затримку між розміщенням бомб"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Компаньйон, що виглядає як випадкове кооперативне дитя#Випадкові ефекти сліз#Ефекти змінюються на кожному поверсі", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Перетворюється на випадкового компаньйона кожні 10 секунд", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "Вбивство 15 ворогів додає 1 заряд до активного предмета", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Робить безкоштовним один випадковий предмет у {{Shop}} магазині чи {{DevilRoom}} кімнаті Диявола#Допоки ви тримаєте цей предмет, один з товарів у магазині буде за знижкою", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "На 3 секунди зупиняє усі ворожі снаряди, що наблизились до персонажа, та відкидає їх від нього опісля", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Зберігає всі розхідники та предмети з поточної кімнати#Повторне використання викидає на підлогу весь вміст Коробки#Дозволяє переносити речі між кімнатами та поверхами", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Сльози персонажа з'єднані між собою електричними розрядами#Розряди наносять шкоду, рівну шкоді персонажа", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "При отриманні шкоди, з'являється орбіталь, що блокує снаряди#Максимум 3 орбіталі#Орбіталь може бути знищеним, якщо заблокує забагато шкоди", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Створює компаньйона у вигляді малого вершника, що створює сарану#Тип вершника та сарани змінюється кожні 10 секунд", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Протягом декількох секунд відображає рухомий курсор, після чого створює привида, дії якого залежать від положення курсора:#Відкриває двері чи скрині#Піднімає предмет#50% шанс вкрасти з магазину чи кімнати Диявола#Атакує ворога, допоки той не помре#Підриває стіни, камені, крамарів, статуї ангелів, ігрові автомати та жебраків", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Орбітальна призма#Дружні сльози, що влучають у неї, розділяються на 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Сльози персонажа штовхають одна одну та зникають, коли перестають рухатись", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Вбивайте ворогів згідно з порядком, вказаним знаком {{DeathMark}} над ними, щоб отримати випадковий розхідник чи перманентне підвищення характеристики", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 532] = "Сльози персонажа поступово сповільнюються, зупиняються, а тоді вибухають на 8 менших#Сльози можуть об'єднуватись та ставити більшими", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Замінює сльози персонажа на пронизливі промені світла#Промені наносять 33% шкоди, але можуть вдаряти ворогів декілька разів", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Дозволяє персонажу тримати 2 активні предмети#Активні предмети можна міняти, використовуючи кнопку Скиду ({{ButtonRT}})", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{Collectible313}} При вході у кімнату боса, персонаж отримує ефект {{HolyMantleSmall}} Святої Мантії", -- Blanket
	-- Full old Desc: "{{SoulHeart}} +1 серце Душі#{{HealingRed}} Відновлює 1 червоне серце#{{Collectible313}} При вході у кімнату боса, персонаж отримує ефект {{HolyMantleSmall}} Святої Мантії"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Принесіть у жертву 1-2 компаньйонів, щоб створити предмет Диявола за кожну пожертву#Перетворює синіх павуків та мух на монети", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} Створює випадкову пігулку#Випускає струмінь рідини#Тип рідини змінюється при кожному використанні пігулки", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} При отриманні шкоди, активний брелок може бути поглинутий та перенесений до інвентарю предметів, перманентно даючи свій ефект", -- Marbles
	-- Full old Desc: "{{Trinket}} Створює 3 випадкові брелки#{{Collectible479}} При отриманні шкоди, активний брелок може бути поглинутий та перенесений до інвентарю предметів, перманентно даючи свій ефект"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "При отриманні персонажем шкоди, з'являється причарований ворог#Створює сильніших друзів, якщо ви зачистили багато кімнат без отримання шкоди", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Сльози персонажа відскакують від підлоги та наносять шкоду від сплеску при кожному стрибку", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Відбиває ворожі знаряди", -- Slipped Rib
	-- Full old Desc: "Орбіталь#Відбиває ворожі знаряди"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "При отриманні шкоди, ви створюєте біле лайно#Допоки в аурі лайна:#{VAR:EFFECTLIST}#Шанс заблокувати шкоду", -- Hallowed Ground
	-- Full old Desc: "При отриманні шкоди, ви створюєте біле лайно#Допоки в аурі лайна:#↑ {{Tears}} -50% Затримка між Слізьми#Шанс заблокувати шкоду"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Зависає перед персонажем#Наносить шкоду персонажа 6 разів за секунду", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Створює кістку-орбіталь або причарованого Боні за кожного вбитого у кімнаті ворога", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Аура, що заморожує ворогів на місці", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Створює брелок Загадковий листок", -- Divorce Papers
	-- Full old Desc: "{{EmptyBoneHeart}} +1 Кісткове серце#↑ {{Tears}} +0.7 Темп Стрільби збільшено#{{Trinket21}} Створює брелок Загадковий листок"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Компаньйон-бумеранг#Може притягувати розхідники", -- Jaw Bone
	-- Full old Desc: "Компаньйон-бумеранг#Наносить 7 контактної шкоди#Може притягувати розхідники"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "↑ {{Tears}} +0.5 Темп Стрільби збільшено перманентно", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} Замінює усі Контейнери червоних сердець на 6 пустих Кісткових сердець#При втраті Кісткового серця:#Випускає 8 кісткових сліз у всіх напрямках#↑ {{Tears}} +0.5 Темп Стрільби збільшено перманентно"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "Матусина Нога постійно намагається вас розтоптати#Використання предмета зупиняє тупіт для поточної кімнати#{{Warning}} (Спробуйте пройти Бос Раш!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Доповнює Матусину Лопату#{{Warning}} Застосуйте лопату на купці землі у \"Темній Кімнаті\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Створює люк на наступний поверх#10% шанс створити {{LadderRoom}}прохід до криївки#{{Warning}} Застосуйте лопату на купці землі у \"Темній Кімнаті\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} При отриманні персонажем шкоди, на підлозі з'являються монети", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% шанс отримати щось з купки лайна", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "Активні предмети потребують на 1 заряд менше", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "{{Collectible44}} При застосуванні активного предмета, персонаж телепортується у випадкову кімнату", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "2x шанс появи ворогів-чемпіонів", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Притягує монети до персонажа", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} Збільшений шанс появи Біблії в {{Shop}} Магазинах та {{Library}} Бібліотеках", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} +50% шанс появи кімнати Ангела#{{Collectible33}} Збільшений шанс появи Біблії в {{Shop}} Магазинах та {{Library}} Бібліотеках"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Collectible93}} Коли персонажу завдають шкоди, з 5% шансом може активуватись ефект Геймкіда на 6.5 секунд"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Сльози персонажа пульсують#Впливає на хітбокс сліз", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ {{Tears}} +0.3 Темп Стрільби збільшено", -- Wiggle Worm
	-- Full old Desc: "Сльози персонажа рухаються хвилями#↑ {{Tears}} +0.3 Темп Стрільби збільшено"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Сльози персонажа з великою швидкістю рухаються по спіралі", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "На 50% ширші сльози#Підвищує відштовхування", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Дозволяє взяти 1 предмет з магазину безкоштовно", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Імунітет до рідини та шипів на підлозі", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} При знищенні каменів, з'являються монетки", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +10% шанс, що замість серця Душі з'явиться чорне серце", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% шанс появи Вічних сердець", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Золоті скрині {{GoldenChest}} відкриваються безкоштовно", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Створює 1 Чорне серце, коли здоров'я персонажа зменшується до половинки серця#{{Warning}} Зникає після 3 спрацьовувань", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "{{Blank}} Випадково дає ефект одного з предметів: #{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "{{Blank}} Випадково дає ефект одного з предметів: #{{Collectible327}} Полароїд#{{Collectible328}} Негатив#{{Trinket48}} Втрачена сторінка#{{Trinket23}} Оголошення про зникнення"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Знижує шанс появи сердець до 20%#{{BlackHeart}} Усі серця на підлозі стають чорними#{{Key}} Збільшує шанс появи ключів", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "Персонаж відроджується за {{Player10}} Загубленого при смерті#Смерть у {{SacrificeRoom}} Кімнаті Жертвопринесень, коли ви тримаєте цей брелок, відкриває Загубленого", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} На 20% вищий шанс появи монетки з купи лайна#Персонаж пукає, підіймаючи монети", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Персонаж пукає або створює купку лайна кожні 30 секунд", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "↑ {{Range}} +10 Дальність збільшено", -- Hook Worm
	-- Full old Desc: "Сльози персонажа рухаються по кутовій траєкторії#↑ {{Range}} +10 Дальність збільшено"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% шанс відродитися як ??? (Синій Малюк) при смерті", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Коли персонажу завдають шкоди, з'являється 1 синя муха", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% шанс на випадковий ефект гриба на кімнату#Може відобразити спеціальні кімнати на карті", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{Heart}} 10% шанс, що винагородою за зачистку кімнати буде випадкове серце#Шанс на додаткові серця зі скринь, каменів з мітками та зламаних автоматів", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% шанс, що нагородою за зачистку кімнати буде ключ#{{Key}} Шанс на додаткові ключі зі скринь, каменів з мітками та зламаних автоматів", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% шанс на появу {{SoulHeart}} Синіх, {{BlackHeart}} Чорних та {{EmptyBoneHeart}} Кісткових сердець", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Damage}} +1.8 Шкоди з 20% шансом при отриманні персонажем ушкоджень", -- Red Patch
	-- Full old Desc: "{{Damage}} +1.8 Шкоди з 20% шансом при отриманні персонажем ушкоджень#{{Luck}} 100% шанс при Удачі 8#{{Timer}} Ефект діє одну кімнату"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% шанс, що нагородою за зачистку кімнати буде бомба#{{Bomb}} Шанс на додаткові бомби зі скринь, каменів з мітками та зламаних автоматів#{{Warning}} Знімає {{Trinket53}}Кліща", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% шанс отримати нагороду за зачистку кімнати#Додаткові розхідники зі скринь, каменів з мітками та зламаних автоматів", -- Lucky Toe
	-- Full old Desc: "↑ {{Luck}} +1 Удачу збільшено#+8% шанс отримати нагороду за зачистку кімнати#Додаткові розхідники зі скринь, каменів з мітками та зламаних автоматів"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Коли здоров'я персонажа знижується до половинки серця, він телепортується у випадкову кімнату", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% шанс, що нагородою за зачистку кімнати буде пігулка#{{Pill}} Шанс на додаткову пігулку зі скринь, каменів з мітками та зламаних автоматів", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% шанс, що нагородою за зачистку кімнати буде карта#{{Card}} Шанс на додаткову картку зі скринь, каменів з мітками та зламаних автоматів", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} При піднятті монети, з 50% шансом з'являється половинка серця", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} При піднятті монети, з 50% шансом може з'явитися бомба", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} При піднятті монети, з 50% шансом може з'явитися ключ", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} При піднятті монети, з 50% шансом вам в інвентар може зарахуватися ще одна", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "-15% здоров'я боса#{{BossRoom}} Відновлює 1 червоне серце, коли ви заходите в кімнату боса#{{Warning}} Може бути знятий лише {{Trinket41}} Сірником або проковтнутий", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Компаньйон з пронизуючими слізьми", -- Isaac's Head
	-- Full old Desc: "Компаньйон з пронизуючими слізьми#Наносить 3.5 шкоди за сльозу"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} При переході на наступний поверх, персонаж отримує +1 Вічне серце", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Зменшує усі ціни Диявольських Угод до 1 контейнера червоних сердець#Не знижує вартість угод за 3 серця Душі", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Компаньйон, що випадково літає по кімнаті#Стріляє у тому ж напрямку, що і персонаж", -- ???'s Soul
	-- Full old Desc: "Компаньйон, що випадково літає по кімнаті#Стріляє у тому ж напрямку, що і персонаж#Наносить 3.5 шкоди за сльозу"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Damage}} За вбивство ворога, з шансом 1/15 ви можете отримати +0.5 Шкоди", -- Samson's Lock
	-- Full old Desc: "{{Damage}} За вбивство ворога, з шансом 1/15 ви можете отримати +0.5 Шкоди#{{Luck}} 100% шанс при Удачі 10#{{Timer}} Ефект триває 1 кімнату"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Перетворює усі скрині на червоні", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Камені з мітками та камені з входом до Криївки відблискують кожні 10 секунд", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Перетворює троль-бомби на бомби-розхідники", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Ефект випадкового черв'яка кожні 3 секунди", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "При отриманні персонажем шкоди, з 50% шансом активується один з ефектів:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "При отриманні персонажем шкоди, з 50% шансом активується один з ефектів:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Персонаж притягує розхідники та ворогів", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Випадково маскує персонажа#Бентежить ворогів", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Раптово створює синіх павуків у ворожих кімнатах", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Бомби персонажа залишають мокрий слід, що наносить шкоду ворогам", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "6.66% шанс, що нагородою за зачистку кімнати буде батарейка#+10% до шансу, що випадково створений розхідник буде батарейкою#5% шанс отримати додатковий 1 заряд за зачистку кімнати", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "10% шанс появи бомби-розхідника при вибуху іншої бомби", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "Коли ви знищуєте камені, з шансом 0.5% може відобразитись розташування люка до {{LadderRoom}} Криївки", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Ефект випадкового брелка для кожної кімнати", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "↑ 50% шанс отримати додаткові розхідники зі скринь#↓ 50% шанс, що скриня міститиме 1 муху", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Збільшує відштовхування", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Накладені на ворогів ефекти тривають вдвічі довше", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "При використанні пігулки, карти чи руни, з 25% шансом ви отримаєте її копію", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Ефект невразливості після отримання шкоди триває вдвічі довше", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} +15% до шансу, що у наступних Скарбницях буде вибір між 2 предметами", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Дозволяє безкоштовно заходити у Магазин", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "На 5% більше монет і менше сердець з наступних нагород#Жадібність і Супер Жадібність більше не з'являються у {{Shop}}Магазинах чи {{SecretRoom}}Секретних кімнатах", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} При використанні Автомата для Пожертв, з шансом 33%, ви можете:#{{Heart}} Відновити 1 серце (40%)#{{Coin}} Отримати 1 монету (40%)#{{Luck}} Отримати +1 Удачу (15%)#{{Beggar}} Створити Жебрака (5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "При знищенні купок лайна, з них з'являється 1 синя муха", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "При використанні ключа, ви відновлюєте половинку серця#Перетворює половинки сердець на цілі", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Активні предмети більше не з'являтимуться", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Компаньйони знаходяться ближче до персонажа", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "При знищенні, купки лайна вибухають і наносять 100 шкоди ворогам поблизу", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% шанс появи купок чорного лайна#При знищенні таких купок, з 5% шансом може з'явитися Чорне серце", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ +0.2 Темп Стрільби збільшено", -- Cracked Crown
	-- Full old Desc: "↑ Надалі характеристики збільшуються на 33% ефективніше#↑ +0.2 Темп Стрільби збільшено#↑ -1 Затримка між слізьми"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% шанс, що усі мухи в кімнаті стануть дружніми", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Подвоює кількість створюваних синіх павуків та мух", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "До 2 компаньйонів", -- Tonsil
	-- Full old Desc: "При отриманні персонажем шкоди 12-20 разів, з'являється компаньйон, що блокує ворожі снаряди#До 2 компаньйонів"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% шанс вистрілити липкою самонавідною сльозою#Соплі наносять шкоду персонажа раз на секунду#Соплі прилипають на 60 секунд", -- Nose Goblin
	-- Full old Desc: "10% шанс вистрілити липкою самонавідною сльозою#Соплі наносять шкоду персонажа раз на секунду#Соплі прилипають на 60 секунд"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% шанс вистрілити сльозою, що рикошетить від ворогів та перешкод", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Поки персонаж тримає повністю заряджений активний предмет:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Поки персонаж тримає повністю заряджений активний предмет:#↑ {{Damage}} +0.5 Шкоду збільшено#↑ {{Speed}} +0.25 Швидкість збільшено#↑ {{Range}} +0.75 Дальність збільшено#↑ {{Tears}} +0.2 Темп Стрільби збільшено#↑ {{Shotspeed}} +0.1 Швидкість Стрільби збільшено#↑ {{Luck}} +1 Удачу збільшено"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Поки персонаж тримає повністю розряджений активний предмет:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Поки персонаж тримає повністю розряджений активний предмет:#↑ {{Damage}} +1.5 Шкоду збільшено#↑ {{Speed}} +0.5 Швидкість збільшено#↑ {{Range}} +1.5 Дальність збільшено#↑ {{Tears}} +0.4 Темп Стрільби збільшено#↑ {{Shotspeed}} +0.3 Швидкість Стрільби збільшено#↑ {{Luck}} +2 Удачу збільшено"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 Секретна кімната на поверсі, поки ви тримаєте це брелок", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "{{Warning}} Перетворює розхідники на їх подвійні версії, поки в інвентарі персонажа однакова кількість бомб, ключів та монет", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Збільшує радіус калюж рідини, які залишає персонаж чи його компаньйони", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "При отриманні шкоди, персонаж спочатку втрачає червоні серця, а не сині чи чорні#Це не зменшує шанс на появу кімнат Диявола/Ангела", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Отримання ударів від 1-9 вибухів знищує брелок та створює ключ, монету, серце та інший випадковий брелок#Отримання шкоди не є обов'язковим", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Компаньйони зупиняються на одному місці та не можуть рухатись", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} Магазини з'являються в Матці", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Скарбниці з'являються в Матці", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} Автомати Поповнення запасів завжди з'являються в {{TreasureRoom}} Скарбницях", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Заходячи у ворожу кімнату, персонаж створює вибухову атакуючу муху#Муха наносить x2 шкоди персонажа + шкоду від вибуху", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Заходячи у ворожу кімнату, персонаж створює отруйну атакуючу муху#Муха наносить x2 шкоди персонажа", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Заходячи у ворожу кімнату, персонаж створює сповільнювальну атакуючу муху#Муха наносить x2 шкоди персонажа", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Заходячи у ворожу кімнату, персонаж створює атакуючу муху#Муха наносить x4 шкоди персонажа", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Заходячи у ворожу кімнату, персонаж створює 1-4 атакуючих мух#Кожна муха наносить x2 шкоди персонажа", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "За вбивство ворога, з 5% шансом ви можете отримати політ для поточної кімнати", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "При переході на наступний поверх, персонаж відновлює половинку серця", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Заходячи в незачищену кімнату боса, ви повністю заряджаєте свої активні предмети", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} Захищає від першого удару на поверсі", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "При використанні активних предметів, вони вислизають на підлогу#Отримуючи шкоду, з 2% шансом персонаж випустить на підлогу один з пасивних предметів", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Боси Ангели створюють предмети ангельського пулу замість частин ключа", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Двері, через які ви потрапили до кімнати, залишаються відкритими", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "З'єднує усіх компаньйонів електричними розрядами#Розряди наносять 6 шкоди", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "При піднятті монети з'являється синя муха", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Усі компаньйони стріляють самонавідними слізьми", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Телепортує персонажа до першої кімнати на поверсі", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Матусина Нога чавить ворога#Якщо в кімнаті немає ворогів, Нога намагається попасти в персонажа", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Телепортує персонажа в кімнату боса", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Створює 1 бомбу, 1 ключ, 1 монетку, 1 серце", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Телепортує персонажа у Магазин", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Створює {{Slotmachine}} Ігровий Автомат або {{FortuneTeller}} Автомат з Передбаченнями", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "Створює {{DonationMachine}} Автомат Прийому Крові#{{GreedMode}} Створює Жебрака-Диявола у режимі Жадібності", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Створює 6 Троль-бомб", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Телепортує персонажа у Скарбницю (Золоту кімнату)", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Телепортує персонажа в Секретну кімнату", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Створює Жебрака чи Жебрака-Диявола", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Подвоює кількість бомб в інвентарі персонажа", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Подвоює кількість монет в інвентарі персонажа", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Подвоює кількість ключів в інвентарі персонажа", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{Heart}} Подвоює кількість червоних сердець#Має лише лікувальний ефект", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Перетворює усі розхідники в кімнаті на бомби", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Перетворює усі розхідники в кімнаті на монети", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Перетворює усі розхідники в кімнаті на ключі", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} Перетворює усі розхідники в кімнаті на серця", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Телепортує персонажа в кімнату Диявола чи Ангела", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Знищує усі камені в кімнаті", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Дублює усі розхідники в кімнаті", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Створює люк на наступний поверх#8% шанс, що люк буде вести до {{LadderRoom}}Криївки", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Знімає усі прокляття", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 серце Душі#{{CurseCursed}} Знімає усі прокляття"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Реролить п'єдестальні предмети в кімнаті", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Активує ефект випадкової руни#25% шанс створити ще одну Порожню руну при використанні", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Перетворює п'єдестальні предмети на випадкові покращення характеристик#Перетворює усі розхідники в кімнаті на синіх мух", -- Black Rune
	-- Full old Desc: "Наносить 40 шкоди усім ворогам в кімнаті#Перетворює п'єдестальні предмети на випадкові покращення характеристик#Перетворює усі розхідники в кімнаті на синіх мух"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "При використанні, персонаж метає картою в напрямку свого руху#Карта миттєво вбиває БУДЬ-ЯКОГО ворога (окрім Деліріума)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Усі предмети та розхідники в {{Shop}} Магазині чи {{DevilRoom}} Кімнаті Диявола стають безкоштовними", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Відображає \"корисні\" поради", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Повністю заповнює кімнату купками лайна", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Миттєво вбиває персонажа та створює 10 розхідників чи предметів на підлозі", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Відкриває всі двері в поточній кімнаті", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Безкоштовно застосовує активний предмет персонажа", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Реролить усі п'єдестальні предмети та розхідники в кімнаті", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Дві Матусині Руки падають та хапають ворогів", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{Collectible313}} Ефект щита {{HolyMantleSmall}} Святої Мантії на 1 кімнату#(Одноразовий захист від шкоди)#25% шанс створити ще одну Святу Картку", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#{{Timer}} Ефект триває 1 кімнату", -- Huge Growth
	-- Full old Desc: "↑ {{Damage}} +7 Шкоду збільшено#↑ {{Range}} +30 Дальність збільшено#Дозволяє персонажу топтати камені та інші перешкоди на шляху#Розмір збільшено#{{Timer}} Ефект триває 1 кімнату"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{Timer}} Ефект триває 1 кімнату", -- Era Walk
	-- Full old Desc: "{{Slow}} Сповільнює ворогів#↑ {{Speed}} +0.5 Швидкість збільшено#↓ {{Shotspeed}} -1 Швидкість Стрільби зменшено#{{Timer}} Ефект триває 1 кімнату"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Персонаж пукає й отруює ворогів поблизу", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Наносить 1 серце шкоди персонажу#Перетворюється на Повне Здоров'я, якщо у персонажа 1 серце чи менше", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Кількість ключів і бомб в інвентарі міняються місцями", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Персонаж швидко створює 5 підпалених бомб", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "Перетворюється на Здоров'я Підвищено, якщо у персонажа 0 чи 1 контейнер", -- Health Down
	-- Full old Desc: "↓ {{Heart}} Забирає 1 контейнер червоних сердець#Перетворюється на Здоров'я Підвищено, якщо у персонажа 0 чи 1 контейнер"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "Випийте 3 такі пігулки, щоб перетворитися на Дорослого (+1 повний контейнер червоних сердець)#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Без ефекту#Випийте 3 такі пігулки, щоб перетворитися на Дорослого (+1 повний контейнер червоних сердець)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Телепортує персонажа у випадкову кімнату#{{ErrorRoom}} Маленький шанс потрапити у Я - ПОМИЛКА", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Повністю перезаряджає активний предмет", -- 48 Hour Energy!
	-- Full old Desc: "Повністю перезаряджає активний предмет#Створює 1-2 батарейки"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "Спустошує усі, крім одного, контейнери червоних сердець", -- Hematemesis
	-- Full old Desc: "Спустошує усі, крім одного, контейнери червоних сердець#Створює 1-4 Червоні серця"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Персонаж не може рухатись та стріляти протягом 2 секунд", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Відкриває всі проходи до секретних кімнат на поверсі", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Зачаровує всіх ворогів в кімнаті", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Приховує карту поверху", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Створює велику калюжу, яка наносить ворогам контактну шкоду", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Персонаж протягом 30 секунд стріляє діагонально", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "Зменшує всю шкоду до половинки серця за удар у поточній кімнаті", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Підвищує усю шкоду до повного серця за удар у поточній кімнаті", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Персонаж какає під себе протягом 2 секунд", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Прокляття Лабіринту для поточного поверху", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Не впливає на його хітбокс", -- One makes you larger
	-- Full old Desc: "Збільшує розмір персонажа#Не впливає на його хітбокс"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Також зменшує його хітбокс", -- One makes you small
	-- Full old Desc: "Зменшує розміри персонажа#Також зменшує його хітбокс"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Створює 1 синього павука за кожну купку лайна в кімнаті", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Створює 1 синього павука за кожного ворога в кімнаті#Створює 1-3 павуків, якщо в кімнаті немає ворогів", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Графіка стає піксельною тричі за 30 секунд", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Створює калюжу слизької рідини у вас під ногами", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Створює калюжу сповільнювальної рідини", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Сповільнює всіх ворогів у кімнаті", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Прискорює всіх ворогів у кімнаті", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} Персонаж ковтає свій брелок та отримує його ефект перманентно", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Вистрілює однією сльозою Іпекаку", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Створює останню пігулку, випиту перед Вурп!", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
