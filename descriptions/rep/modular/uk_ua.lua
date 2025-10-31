local languageCode = "uk_ua"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "↑ {{Speed}} +0.2 Швидкість збільшено", -- The Virus
	-- Full old Desc: "{{Poison}} Отруйний дотик#↑ {{Speed}} +0.2 Швидкість збільшено"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "{{Poison}} Метальна отруйна бомба#Наносить 185 + вашу шкоду#Створює отруйну хмарку", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Збільшує шанс перемоги в азартних іграх#Збільшує шанс на нагороду за зачистку кімнати#Перетворює деякі погані пігулки в хороші", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 Удачу збільшено#Збільшує шанс перемоги в азартних іграх#Збільшує шанс на нагороду за зачистку кімнати#Перетворює деякі погані пігулки в хороші"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "Якщо це значення більше 60 шкоди, натомість наносить 5x вашої шкоди + 30#↓ {{Tears}} -60% Скорострiльнiсть знижено", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Стрільба бомбами#{{Damage}} Кожна бомба наносить 10x вашої шкоди#Якщо це значення більше 60 шкоди, натомість наносить 5x вашої шкоди + 30#↓ {{Tears}} -60% Скорострiльнiсть знижено"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Притягує розхідники до персонажа#Дистанційно відкриває скрині, ігноруючи шкоду від шипастих скринь", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Заряджувані сльози#↑ {{Damage}} Шкода зростає відповідно до заряду, аж до 400%", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "{{AngelDevilChance}} Поки тримаєте, шанс на кімнати Диявола чи Янгола збільшено на +17.5%", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Серце Душі#При використанні, боса цього поверху буде замінено на Вершника#{{AngelDevilChance}} Поки тримаєте, шанс на кімнати Диявола чи Янгола збільшено на +17.5%"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Створює люк на наступний поверх#{{LadderRoom}} Створює вхід до криївки, якщо використано на декоративних елементах підлоги (трава, малі камінці, папірці, розсипані коштовності, інше.)", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Розкриває типи кімнат в радіусі 2 суміжних кімнат#{{SecretRoom}} Може також виявити Секретні та Суперсекретні кімнати#Блокує снаряди, що падають згори", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "Персонаж стріляє ножами замість сліз#Ніж наносить 2x шкоди персонажа в ближньому бою та 6x шкоди при 1/3 заряду#Решта заряду впливає лише на дальність польоту ножа#Шкода зменшується до 2x, коли ніж повертається до персонажа", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "Створює випадкового компаньйона#Він живе до кінця поточного поверху", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Шкоду збільшено для поточної кімнати#{{Warning}} Наносить 1 серце шкоди персонажу#Після першого використання в кімнаті, наносить 0.5 серця шкоди#Червоні серця є пріоритетними", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "Дає імунітет до отрути", -- Bob's Curse
	-- Full old Desc: "{{Poison}} Отруйні бомби#Бомби залишають отруйну хмарку#Дає імунітет до отрути#{{Bomb}} +5 бомб"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} Якщо у Вас залишилась всього половинка серця, дає 1 Серце Душі (один раз на кімнату)#!!! Не спрацьовує при пожертвах", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Ламає камені та може наносити шкоду ворогам у ближньому бою#Кайло розряджається від кожного удару ним по об'єкту#Заряд поповнюється при переході між поверхами#В оригіналі зветься Notched Axe, що є великодкою до гри Minecraft", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "↓ {{Range}} -20% Дальнiсть зменшено", -- Ipecac
	-- Full old Desc: "{{Poison}} Вибухові отруйні сльози#↑ {{Damage}} +40 Шкоду збільшено#↓ {{Shotspeed}} -0.2 Швидкість Стрільби зменшено#↓ {{Tears}} -67% Скорострiльнiсть зменшено#↓ {{Range}} -20% Дальнiсть зменшено"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "{{Damage}} Лазер наносить 13% від Вашої шкоди#↓ {{Tears}} -33% Скорострiльнiсть зменшено", -- Technology 2
	-- Full old Desc: "Замінює праве око персонажа на постійний лазер#{{Damage}} Лазер наносить 13% від Вашої шкоди#↓ {{Tears}} -33% Скорострiльнiсть зменшено"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Сповільнює ворогів на 4 секунди#Створює 1 синього павука за кожного вбитого ним ворога", -- Spider Butt
	-- Full old Desc: "{{Slow}} Сповільнює ворогів на 4 секунди#Наносить 10 Шкоди усім ворогам#Створює 1 синього павука за кожного вбитого ним ворога"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} {{ColorOrange}}Метальна{{CR}}#Запускає себе в напрямку стрільби Ісаака#Розбивається та наносить 7 Шкоди, коли торкається до ворога#Залишає калюжу рідини, що наносить шкоду і паралізує ворогів", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "Персонаж пукає декілька разів та залишає хмарки отруйного газу, коли до нього торкаються", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 186] = "Червоні серця є пріоритетними", -- Blood Rights
	-- Full old Desc: "Наносить 40 шкоди всім ворогам#{{Warning}} Наносить 1 серце шкоди персонажу#Після першого використання в кімнаті, наносить 0.5 серця шкоди#Червоні серця є пріоритетними"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 203] = "50% шанс створити подвійну версію розхідників", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} При використанні незарядженого активного предмета, дозаряджає його за серця#Знімає половинку серця за кожен заряд#Червоні серця в пріоритеті", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Коли відпустите кнопки, сльози полетять в напрямку, в якому їх було випущено#↑ {{Tears}} +1 Скорострiльнiсть збільшено", -- Anti-Gravity
	-- Full old Desc: "Утримання кнопок стрільби змушує сльози зависнути в повітрі#Коли відпустите кнопки, сльози полетять в напрямку, в якому їх було випущено#↑ {{Tears}} +1 Скорострiльнiсть збільшено"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{Bomb}} +5 бомб", -- Pyromaniac
	-- Full old Desc: "Вибухи відновлюють по 0.5 червоного серця персонажу, замість того, щоб наносити йому шкоду#{{Bomb}} +5 бомб"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "↑ {{Tears}} +0.5 Скорострiльнiсть збільшено#↓ {{Range}} -20% Дальнiсть зменшено", -- Cricket's Body
	-- Full old Desc: "Сльози розлітаються на 4 частини при ударі#Кожна частинка наносить половину від шкоди сльози#↑ {{Tears}} +0.5 Скорострiльнiсть збільшено#↓ {{Range}} -20% Дальнiсть зменшено"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "<MISSING>", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{BlackHeart}} +2 Чорні серця", -- Abaddon
	-- Full old Desc: "↑ {{Damage}} +1.5 Шкоду збільшено#↑ {{Speed}} +0.2 Швидкість збільшено#{{Fear}} Сльози страху#Перетворює всі {{Heart}} Контейнери Червоних сердець {{BlackHeart}} в Чорні серця#{{BlackHeart}} +2 Чорні серця"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "↑ {{Speed}} +0.3 Швидкість збільшено", -- Stop Watch
	-- Full old Desc: "{{Slow}} Постійний ефект сповільнення для ворогів#↑ {{Speed}} +0.3 Швидкість збільшено"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Сині павуки та мухи наносять подвійну шкоду#Компаньйони на основі мух та павуків стають сильнішими", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Bomb}} +5 Бомб", -- Hot Bombs
	-- Full old Desc: "{{Burning}} Підпалені бомби#Вогонь більше не завдає Вам шкоди#Бомби наносять контактну шкоду#{{Bomb}} +5 Бомб"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ Шкода від сліз зменшується за час їх польоту#300% шкоди впритул", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +0.5 Шкоду збільшено#↓ Шкода від сліз зменшується за час їх польоту#300% шкоди впритул"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Коли у Вас залишається 1 серце, наносить шкоду всім ворогам в кімнаті#{{Collectible35}} Ефект від Чорних сердець і Некрономікона наносять подвійну шкоду", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Чорне Серце#Коли у Вас залишається 1 серце, наносить шкоду всім ворогам в кімнаті#{{Collectible35}} Ефект від Чорних сердець і Некрономікона наносять подвійну шкоду"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "Створює одну випадкову руну", -- Clear Rune
	-- Full old Desc: "{{Rune}} Копіює ефекти руни чи каменя душі, які ви тримаєте в руках#Створює одну випадкову руну"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Тіло персонажа стає невразливим#!!! Коли Серцю завдають шкоди, вона зараховується Вам#Компаньйон заряджає атаку, поки ви стріляєте. При пострілі, Серце також відштовхує ворогів та їх снаряди", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Збирає червоні серця з підлоги#За кожні 1.5 серця дає Чорне серце, карту, пігулку, руну чи павука", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Випадково створює синіх павуків у кімнатах з ворогами#{{Charm}} Причаровує ворогів при дотику до них", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Реролить всі п'єдестали, характеристики, розхідники та всі підібрані пасивні артефакти#Дублікує 1 випадковий розхідник в кімнаті#Перезапускає поточну кімнату, відновлює та реролить ворогів#Реролить камені в кімнаті", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Реролить всіх ворогів у кімнаті, замінюючи на слабші версії#Наприклад, усі червоні мухи стануть чорними", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "<MISSING>", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "При використанні, підсвічує таємничі камені та камені з люком до криївки#{{Collectible76}} Якщо всі ефекти вже активні, дає Рентгенівське бачення", -- Book of Secrets
	-- Full old Desc: "При використанні, підсвічує таємничі камені та камені з люком до криївки#Дає один з ефектів до кінця поверху: #{{Collectible54}} Карта скарбів#{{Collectible21}} Компас #{{Collectible246}} Синя карта#Дає ефекти, яких у вас ще немає#{{Collectible76}} Якщо всі ефекти вже активні, дає Рентгенівське бачення"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Кидає червоний вогонь#Вогонь зникне, коли завдасть шкоди ворогу, заблокує 5 пострілів або через 10 секунд", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Перетворює усіх не-босів у купки лайна#Миттєво вбиває какашкових ворогів та босів#Гасить всі вогнища і наповнює кімнату водою#Перетворює клітинки з лавою на придатну для ходьби підлогу", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} При використанні перед боєм з босом, предмет Кімнати Боса буде Диявольською угодою#!!! Прийняття цієї угоди матиме ті ж наслідки, що і в Кімнаті Диявола", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 Чорне серце#{{DevilRoom}} При використанні перед боєм з босом, предмет Кімнати Боса буде Диявольською угодою#!!! Прийняття цієї угоди матиме ті ж наслідки, що і в Кімнаті Диявола"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Відштовхує найближчих ворогів і снаряди#Вороги, яких штовхнуло на перешкоди, отримують 10 шкоди", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Наносить усім ворогам у кімнаті x2 від шкоди гравця + 10#{{Coin}} Ціна: 1 монетка", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Перетворює 1 серце Душі або Чорне серце на 1 Контейнер червоного серця", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "створює предмети залежно від вашого поверху:#B1: 2 {{SoulHeart}}; B2: 2 {{Bomb}} & 2 {{Key}}#C1: 1 {{BossRoom}} предмет; C2: B1+C1#D1: 4 {{SoulHeart}}; D2: 20 {{Coin}}#W1: 2 {{BossRoom}} предмети#W2: {{Collectible33}} Біблія#???/Void: Нічого#Sheol: 1 {{DevilRoom}} предмет + 1 {{BlackHeart}}#Cathe: 1 {{AngelRoom}} предмет + 1 {{EternalHeart}}#Dark Room: {{Collectible523}} Відкриває Коробку для перенесень; Chest: 1 {{Coin}}#Home: {{Collectible580}} Червоний ключ", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Дотик до ворогів завдає їм шкоди", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Швидкість збільшено#Дотик до ворогів завдає їм шкоди#Рухаючись достатньо швидко, можна уникнути контактної шкоди"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Ви залишаєте за собою мокрий слід#{{Damage}} Ця рідина наносить 66% Вашої шкоди за секунду#На рідину поширюються ефекти сліз", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Магнітні сльози#Притягує ворогів, розхідники та брелки#Предмети будуть тягнутися до місця падіння сльози", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Стріляє у випадковому напрямку, копіюючи ефекти сліз персонажа#{{Damage}} Наносить 75% шкоди персонажа", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "Випускає 8 сліз у всіх напрямках#Сльози успадковують ефекти сліз персонажа, +5 Шкоди#Перезаряджається при стрільбі", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "<MISSING>", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Утримуйте кнопку ВИКОРИСТАТИ, щоб розрядити предмет#Розряджений артефакт дає ефект невразливості#Промінь світла б'є ворогів, які торкнуться до Вас під час невразливості#Якщо ви заблокуєте шкоду в останню мить, персонаж вистрелить лазером Святої Сірки й отримає короткочасний щит#!!! Не тримайте задовго, адже почнете отримувати шкоду!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 331] = "Самонавідні сльози", -- Godhead
	-- Full old Desc: "↑ {{Speed}} +0.5 Шкоду збільшено#↓ {{Tears}} -0.3 Темп Стрiльби зменшено#↓ {{Shotspeed}} -0.3 Швидкість Стрільби зменшено#Сльози отримують ауру, яка наносить 60 шкоди за секунду#Самонавідні сльози"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Bomb}} 2-3 Бомби", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 Чорне серце#Створює: #{{Bomb}} 2-3 Бомби#{{Trinket41}} Сірник"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "Стріляє однією великою пронизуючою спектральною сльозою ((Шкода x10) + 10)#!!! При отриманні шкоди:#↓ Ви додатково втратите 2 серця#↑ {{Range}} +1.5 Дальнiсть збільшено #Ви залишаєте кривавий слід#Додаткова шкода НЕ може вбити вас#Самопошкодження не враховується", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Демонічний компаньйон, який копіює атаку персонажа#{{Damage}} Наносить 75% вашої шкоди#{{Player13}} 100% при грі за Ліліт", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Рухається вздовж стін/перешкод у кімнаті#Найближчі вороги будуть цілитись в муху", -- Lost Fly
	-- Full old Desc: "Рухається вздовж стін/перешкод у кімнаті#Наносить 56 контактної шкоди за секунду#Найближчі вороги будуть цілитись в муху"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "Бомби персонажа прилипають до ворогів та залишають білу сповільнювальну рідину на підлозі#При вбивстві ворога бомбою, з'являються сині павуки", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 бомб#Бомби персонажа прилипають до ворогів та залишають білу сповільнювальну рідину на підлозі#При вбивстві ворога бомбою, з'являються сині павуки"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Стрільба в одному напрямку поступово збільшує вашу скорострільність до 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Damage}} Промінь наносить x3 Вашої шкоди", -- Holy Light
	-- Full old Desc: "10% шанс вистрелити  Святою сльозою, яка генерує Промінь Світла при влучанні#{{Luck}} 50% шанс при Удачі 9#{{Damage}} Промінь наносить x3 Вашої шкоди"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Імунітет до вибухів#25% шанс заблокувати ворожу сльозу#Захищає від снарядів, що падають зверху", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Магазин миттєво поповнює товари при купівлі#Нові товари коштують дорожче", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Тепер ви відкриваєте закриті двері та скрині монетами замість ключів", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 монет#Тепер ви відкриваєте закриті двері та скрині монетами замість ключів"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Можна зловити ворога, кинувши в нього м'ячем#При наступному використанні, спіймана істота з'явиться як Ваш компаньйон#Можна підняти кулю, ставши на неї. Це миттєво перезарядить предмет", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} Запускається і ковзає по кімнаті#Швидкість залежить від заряду#Наносить 5-25 контактної шкоди за удар, залежно від швидкості", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "<MISSING>", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Створює випадкову Руну або Камінь Душі кожні 7-8 кімнат", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "Вороги можуть отримати шкоду від атак своїх соратників і почати битися між собою", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15% шанс вистрелити  отруйною сльозою#{{Luck}} Не залежить від Удачі#{{Poison}} Отруює ворогів при дотику#{{BlackHeart}} При смерті ворогів, отруєних дотиком, з 20% шансом може з'явитися Чорне серце", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ {{Range}} +3 Дальнiсть збільшено#Компаньйони також стріляють в бік мітки", -- Marked
	-- Full old Desc: "Всі ваші сльози автоматично спрямовуються в бік червоної мітки, яку контролює гравець#↑ {{Tears}} +0.7 Темп Стрiльби збільшено#↑ {{Range}} +3 Дальнiсть збільшено#Компаньйони також стріляють в бік мітки"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "{{Chargeable}} Ви стріляєте заряджуваним лазерним кільцем, яке пролітає через всю кімнату#Шкода і розмір кільця залежить від заряду#100% шкоди при повному заряді", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} Після 2.35 секунд безперервної стрільби, на голові персонажа з'явиться червоний хрест#{{Collectible118}} Відпустіть кнопки стрільби, щоб створити чорне лазерне кільце навколо персонажа", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "25% шанс вистрелити  сльозою, що приклеюється до ворога#{{Luck}} Не залежить від Удачі#Сльози вибухають за декілька секунд і наносять Вашу шкоду + 60", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "При блокуванні, з 10% шансом випускає газ, який може причарувати, отруїти чи відштовхнути ворогів#Гази наносять 5-6 шкоди", -- Farting Baby
	-- Full old Desc: "Компаньйон, який блокує ворожі снаряди#При блокуванні, з 10% шансом випускає газ, який може причарувати, отруїти чи відштовхнути ворогів#Гази наносять 5-6 шкоди"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} {{ColorOrange}}Метальний{{CR}} (Натисніть двічі на кнопку вогню для запуску)#Реролить ворогів і розхідники, до яких торкається", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Підвищує одну з характеристик, залежно від аури довкола персонажа#Коли вам завдають шкоди, ви втрачаєте ауру на поточну кімнату, але отримаєте нову в наступній кімнаті#{{ColorRed}}Червона{{CR}} = {{Damage}} +4 Шкоду збільшено#{{ColorBlue}}Синя{{CR}} = {{Tears}} +2 Скорострiльнiсть збільшено#{{ColorYellow}}Жовта{{CR}} = {{Speed}} +0.5 Швидкість збільшено#{{ColorOrange}}Оранжева{{CR}} = {{Range}} +3 Дальнiсть збільшено", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "При вбивстві ворогів, на їх місці може з'явитися чорне кільце Сірки", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "Створює 1-3 монетки, якщо у кімнаті не з'явилося винагороди#{{Coin}} Збільшує ліміт монет до 999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Літає по кімнаті і наносить 7.5-10 шкоди за секунду своєю аурою#↑ {{Damage}} Шкода від ваших атак зростає на +50%, коли Ви знаходитесь в аурі", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} Причаровує ворогів поблизу", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "Повертає персонажа до попередньої кімнати та скасовує всі дії, виконані в кімнаті, де було активовано Годинник#Повернення може бути використано 3 рази на поверх#Діє як {{Collectible66}}Пісочний годинник, коли кількість повернень на поверх було вичерпано, сповільнюючи ворогів на 8 секунд", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "При вибуху, бомби можуть створити випадковий розхідник з шансом 63% та причарувати ворогів з шансом 15%#Після створення розхідника, шанс на новий зменшується до 1% для поточного поверху", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 бомб#При вибуху, бомби можуть створити випадковий розхідник з шансом 63% та причарувати ворогів з шансом 15%#Після створення розхідника, шанс на новий зменшується до 1% для поточного поверху"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "Маленька тінь, що рухається за персонажем#Коли ворог торкається тіні, з'являється дружній чорний чарджер", -- My Shadow
	-- Full old Desc: "Маленька тінь, що рухається за персонажем#Коли ворог торкається тіні, з'являється дружній чорний чарджер#Чарджер наносить 5 шкоди за секунду"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Відновлює всіх ворогів у кімнаті#Дозволяє фармити нагороди за зачистку кімнати", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Після кожних 15 пострілів, персонаж випускає град сліз", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Коли персонажу завдають шкоди:#{{Heart}} 25% шанс появи Червоного серця#Ви починаєте стікати кров'ю, випускаючи криваві сльози у напрямку стрільби#Ви втрачатимете половинку Червоного серця кожні 20 секунд кровотечі#Кровотеча зупиниться, якщо ви відновите Червоні серця, якщо у вас не залишиться червоних сердець, або якщо ви будете на грані смерті", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "Після кожних 20 сліз, персонаж випускає монетку-сльозу, яка наносить 1.5x Шкоди + 10#Уражені вороги гублять монетку і тимчасово перетворюються на золотих#Золоті вороги гублять 1-3 монетки при смерті#!!! Монетка-сльоза коштує 1 монету", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Ефекти деяких карт підсилюються", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Створює випадкову карту#{{Card}} Ефекти деяких карт підсилюються"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Сльози-кістки", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +0.38 Дальнiсть збільшено#Сльози-кістки#Сльози розколюються на 1-3 осколки після зіткнення з чим завгодно"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Збільшується шанс на появу ворогів-чемпіонів та нагороди за зачистку кімнати", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Серця Душі#Збільшується шанс на появу ворогів-чемпіонів та нагороди за зачистку кімнати#Пріоритетно з'являються предмети, яких у персонажа найменше"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Інші компаньйони рухаються слідом за ним і автоматично стріляють у ворогів#Перестає рухатись, коли ви стріляєте#Телепортується до персонажа, коли ви перестанете стріляти", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Перетворюється у Скляну гармату при використанні", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Дублює 1 випадковий розхідник у кімнаті#Дублікати розхідників можуть відрізнятися від оригіналу", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "!!! При використанні, поглинає усі п'єдестальні артефакти в кімнаті#Активний артефакт: Його ефект буде спрацьовувати при кожному наступному використанні Порожнечі#↑ Пасивний артефакт: Незначне покращення для 2-ох випадкових характеристик", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Може бути використаним як будь-який кубик окрім {{Collectible723}} Кубика Прокрутки#Змінюйте функціонал кубика з допомогою {{ButtonRT}}", -- D Infinity
	-- Full old Desc: "Може бути використаним як будь-який кубик окрім {{Collectible723}} Кубика Прокрутки#Змінюйте функціонал кубика з допомогою {{ButtonRT}}#Час зарядки залежить від типу використаного кубика"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}}  Шкода збільшується за кожен пустий контейнер червоних сердець:#+0.3 за 1#+0.92 за 2#+1.76 за 3#+2.79 за 4#+3.98 за 5", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Сльози створюють електричні іскри при влучанні#Іскри наносять половину вашої шкоди#Іскри можуть стрибати між ворогами", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "Вогонь гасне через 2 секунди", -- Ghost Pepper
	-- Full old Desc: "8.33% шанс вистрілити синім вогнем, який блокує ворожі сльози та наносить контактну шкоду#{{Luck}} 50% шанс при Удачі 10#Вогонь гасне через 2 секунди"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "Заходячи в кімнату, ви зливаєтесь з оточенням та бентежите всіх ворогів#Камуфляж зникає при першому пострілі#↑ {{Speed}} +0.5 Швидкість збільшено, поки діє маскування#При зникненні камуфляжу, наносить шкоду ворогам поблизу та збільшує ваші Скорострiльнiсть і Шкоду на короткий проміжок часу", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "+1 Контейнер сердець за кожні 25 монет у вас#{{Player14}} / {{Player33}}Хранитель може отримати додаткові Серця-Монетки#{{Collectible416}} +1 Контейнер за кожні 100 монет, якщо ви зібрали понад 99", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "Рука миттєво вбиває ворогів, може ламати турелі та наносить 36 шкоди босам", -- Little Horn
	-- Full old Desc: "5% шанс випустити сльозу, яка викликає руку Великого Рогу#{{Luck}} 20% шанс при Удачі 15#Рука миттєво вбиває ворогів, може ламати турелі та наносить 36 шкоди босам#Персонаж наносить 7 контактної шкоди за секунду"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Створює муху-турель, яка стріляє у ворогів", -- Brown Nugget
	-- Full old Desc: "Створює муху-турель, яка стріляє у ворогів#Кожен її постріл наносить 3.5 шкоди"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "Якщо сльоза попадає ворогу в спину, вона наносить подвійну шкоду та накладає ефект кровотечі: вороги залишають під собою кривавий слід, який наносить їм шкоду", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} Наносить вашу шкоду + 10% від максимального здоров'я ворогів#Діє на всіх ворогів в кімнаті#{{HalfHeart}} Шанс на появу половинки червоного/синього серця, коли предмет наносить шкоду ворогам", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "Орбіталь, що наносить контактну шкоду#Уражені вороги залишають кривавий слід і отримують шкоду при русі#{{Damage}} Наносить 1.5x шкоди персонажа за секунду", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Орбіталь, що стріляє кожні 0.33 секунди, якщо поруч є вороги", -- Bloodshot Eye
	-- Full old Desc: "Орбіталь, що стріляє кожні 0.33 секунди, якщо поруч є вороги#Одна сльоза наносить 3.5 шкоди#Наносить 20 контактної шкоди за секунду"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Змушує випадкових ворогів та їх снаряди 'заглючити' на випадковий проміжок часу#25% шанс на подвоєну винагороду за зачистку кімнати", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Дозволяє ставити бомби швидше#Бомби не відштовхують одна одну", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 бомб#Дозволяє ставити бомби швидше#Бомби не відштовхують одна одну"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "<MISSING>", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "При використанні, збирає у себе до 10 розхідників з поточної кімнати#Повторне використання викине всі предмети на підлогу#Це дозволяє переносити речі між кімнатами", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Сльози з'єднані між собою пучками електрики#Струм наносить x4.5 шкоди персонажа за секунду", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Створює люк на наступний поверх#Створює {{LadderRoom}}вхід у криївку, якщо використано на декоративній клітинці (трава, камінці, папірці, коштовні камені і т.д.)", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% шанс вистрелити липкими слізьми-спорами#{{Luck}} Не залежить від Удачі#Спори вибухають після 2.5 секунд, наносячи шкоду, отруюючи ворогів поруч та випускаючи ще більше спор", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} Лякає ворогів у невеликому радіусі довкола вас", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{{Coin}} +5 монет#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "{{Coin}} Перетворює 5 монет у {{Damage}} +1.2 шкоди для поточної кімнати#{{Coin}} +5 монет"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "При повторній активації збільшує +1.8 шкоду та розміри лазера для поточної кімнати", -- Sulfur
	-- Full old Desc: "{{Collectible118}} Лазер Сірки для поточної кімнати#При повторній активації збільшує +1.8 шкоду та розміри лазера для поточної кімнати"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "При активації дає щось зі списку: #Передбачення#{{SoulHeart}} Серце Душі#{{Card}} Карту таро#{{Rune}} Рун чи Камінь Душі#{{Trinket}} Брелок", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Шанс вистрелити 1-3 додатковими слізьми у випадкові сторони#{{Luck}} Не залежить від Удачі", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Електричний розряд, що постійно б'є ворогів, які знаходяться поруч з персонажем#{{Damage}} Струм наносить до x3.75 від вашої шкоди за секунду", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "Випускає кільце з 10 сліз, які наносять по 10 шкоди#↑ {{Tears}} +1.2 Скорострiльнiсть збільшено при першому ударі#↑ {{Tears}} +0.4 для кожного наступного удару", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 562] = "↑ Закріплює найвищі значення характеристик персонажа до кінця забігу#Фактично створює дві таблиці характеристик, в одній з яких зберігаються максимальні значення, а в другій - реальні#Реальні значення впливають на подальші покращення (якщо значення максимальної шкоди 25, а фактичне 12, то підбір артефакту на +1 шкоди не змінить максимального значення)", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Бомби вибухають з випадковим ефектом", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 бомб#Бомби вибухають з випадковим ефектом"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Компаньйон, що ганяється за ворогами#Після 15 вбивств, він виростає, наносить більше шкоди, але і намагається напасти на вас#Після вбивства 40 ворогів (сумарно), він стає ще сильнішим і може ламати камені#Атакуючи його, ви можете повернути цуцика на попередні стадії", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} +0.5 серця Душі при переході на наступний поверх#У сновидінні при переході між поверхами відображає: #{{TreasureRoom}} артефакт у Золотій кімнаті#{{BossRoom}} наступного боса", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} +0.4 Скорострiльнiсть збільшується за кожну кімнату, зачищену без отримання шкоди#{{Tears}} Максимум до +2 Скорострільності", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Натисніть на кнопки стрільби двічі, щоб створити щит#Щит існує 1 секунду, відштовхує ворогів і відбиває ворожі снаряди і лазери", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "Б'є персонажа ножем на початку кожного поверху, забираючи червоні серця (залишає 0.5 червоного серця)#Збільшує характеристики на весь поверх:#↑ {{Damage}} Шкода + 0.15 * ВтраченіСерця^2#↑ {{Speed}} Швидкість + 0.05*ВтраченіСерця", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Кольорові сльози з різними ефектами", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "{{SoulHeart}} +2 серця Душі", -- Orphan Socks
	-- Full old Desc: "Шипи і рідина на підлозі не завдають персонажу шкоди#{{Speed}} +0.3 Швидкість збільшено#{{SoulHeart}} +2 серця Душі"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "↓ {{Shotspeed}} -0.16 Швидкість стрільби зменшено", -- Eye of the Occult
	-- Full old Desc: "Контрольовані сльози#↑ {{Damage}} +1 Шкоду збільшено#↑ {{Range}} +2 Дальнiсть збільшено#↓ {{Shotspeed}} -0.16 Швидкість стрільби зменшено"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% шанс вистрелити додатковими орбітальними спектральними слізьми", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1 Контейнер з червоним серцем#{{Heart}} Повне здоров'я#↑ {{Damage}} +20% Шкоду збільшено#20% шанс вистрелити додатковими орбітальними спектральними слізьми"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Дві кругові аури довкола персонажа, які завдають ворогам шкоди#Внутрішня аура наносить більше шкоди", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "Компаньйон у вашій голові, що випускає по 4 сповільнювальні сльози за постріл#При отриманні шкоди персонажем, компаньйон може вирватись назовні", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Усі Діпи (малі какашки) стають дружніми#Створює 1-4 Діпів при руйнуванні купок лайна#Тип Діпа залежить від типу купи лайна#Камені можуть бути замінені на лайно", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Створює меч над вашою головою, який подвоює всі п'єдестали артефактів#Не подвоює кількість предметів в Магазині, Скрині чи під час угод з Дияволом#!!! Вбиває вас у випадковий момент, якщо ворог завдасть вам шкоди", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Створює гігантську калюжу жовтої рідини#Рідина наносить 24 шкоди за секунду", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Замість сліз, персонаж махає мечем#Наносить x3 + 3.5 вашої шкоди#{{Chargeable}} Утримування кнопки атаки дозволяє зарядити кругову атаку, яка наносить x8 + 10 шкоди персонажа#Додатково випускає сльози при нормальних ударах, якщо здоров'я персонажа рівне або більше за кількість червоних контейнерів", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Створює нову кімнату, що прилягає до стіни з контуром червоних дверей#Кімнати можуть бути спеціальними (золоті кімнати, магазини, угоди з янголом/дияволом тощо)#Кімната ззовні квадрата 13х13 кімнат (стандартного розміру карти) телепортує вас в Я - ПОМИЛКА", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Орбітальний компаньйон-муха", -- Psy Fly
	-- Full old Desc: "Орбітальний компаньйон-муха#Переслідує і знищує ворожі снаряди#Наносить контактну шкоду"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Спотворює екран#Ефект від кількох застосувань додається", -- Wavy Cap
	-- Full old Desc: "↑ {{Tears}} +0.75 Скорострiльнiсть збільшено#↓ {{Speed}} -0.03 Швидкість знижено#Спотворює екран#Ефект від кількох застосувань додається"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Бомби, поставлені при стрільбі, перетворюються на ракети, що летять в сторону вашої атаки", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 бомб#Бомби, поставлені при стрільбі, перетворюються на ракети, що летять в сторону вашої атаки"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Може поєднуватись з другим активним предметом, чим підсилює його ефекти і може створити тематичних вогників#Замість {{DevilRoom}} кімнати Диявола, першою буде з'являтись {{AngelRoom}} кімната Ангела#{{AngelChance}} Кімнати Ангела можуть з'являтись навіть якщо ви вже уклали угоду з Дияволом", -- Book of Virtues
	-- Full old Desc: "Створює орбітального компаньйона-вогника, який стріляє спектральними слізьми, але може бути знищений#Може поєднуватись з другим активним предметом, чим підсилює його ефекти і може створити тематичних вогників#Замість {{DevilRoom}} кімнати Диявола, першою буде з'являтись {{AngelRoom}} кімната Ангела#{{AngelChance}} +12.5% збільшений шанс на появу Кімнати Ангела#{{AngelChance}} Кімнати Ангела можуть з'являтись навіть якщо ви вже уклали угоду з Дияволом"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "При використанні, створює: #{{SoulHeart}} 3 серця Душі#{{AngelRoom}} 2 предмети з пулу Кімнати Ангела#{{SoulHeart}} Заряджається серцями Душі#{{DevilRoom}} Створює лише 2 серця Душі та 1 предмет Ангела, якщо раніше ви укладали угоду з Дияволом", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Створює драбину в стартовій кімнаті кожного поверху#Вони ведуть до унікального магазину {{AngelRoom}} Кімнати Ангела з предметами та розхідниками", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "↑ {{Luck}} +1 Удачі", -- Sol
	-- Full old Desc: "{{BossRoom}} Відображає локацію кімнати боса на міні-карті#Після перемоги над босом, дає ефекти до кінця поверху: #{{Card20}} Активує ефект карти Сонце#{{Battery}} Повністю заряджає ваш активний артефакт#{{CurseBlind}} Знімає будь-які прокляття#↑ {{Damage}} +3 Шкоди#↑ {{Luck}} +1 Удачі"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "Додаткові {{SecretRoom}} Секретна та {{SuperSecretRoom}} Суперсекретна кімнати на кожному поверсі#{{SecretRoom}} У Секретних кімнатах з'являється промінь світла, який збільшує #{{Tears}} Темп Стрільби на цілий поверх та дає{{HalfSoulHeart}} половинку серця Душі#{{SecretRoom}} Відображає локацію однієї з Секретних кімнат на кожному поверсі", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Двері у кімнатах залишаються відкритими, навіть якщо кімнату не було зачищено", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} +0.4 Швидкість збільшено#Двері у кімнатах залишаються відкритими, навіть якщо кімнату не було зачищено"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} Зачаровує ворогів поблизу персонажа", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1 Контейнер з червоним серцем#{{Heart}} Вiдновлює 1 Червоне Серце#{{Charm}} Зачаровує ворогів поблизу персонажа"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Замінює сльози на камені#Камені можуть наносити x0.5 - x2 шкоди персонажа", -- Terra
	-- Full old Desc: "↑ {{Damage}} +1 Шкоду збільшено#Замінює сльози на камені#Камені можуть наносити x0.5 - x2 шкоди персонажа#Можуть знищувати перешкоди та відкривати прохід у Секретні кімнати#Посилене відштовхування"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Двічі натисніть на кнопки ходьби, щоб здійснити ривок, під час якого персонаж стає невразливим та наносить 4x шкоди#Перезаряджання триває 3 секунди", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} Імунітет до отрути", -- Jupiter
	-- Full old Desc: "↑ {{Heart}} +2 Контейнери з червоними серцями#{{HalfHeart}} Відновлює половинку червоного серця#↓ {{Speed}} -0.3 Швидкість знижено#↑ {{Speed}} Стоячи на місці, персонаж нарощує свою швидкість до +0.5#{{Poison}} При русі, персонаж випускає хмари отруйного газу, а накопичена швидкість зменшується до норми#{{Poison}} Імунітет до отрути"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "У вас з'являється орбіта#При вході в нову кімнату, 7 сліз персонажа починають кружляти навколо вас#Ці сльози існують 13 секунд та наносять x1.5 +5 шкоди персонажа#Шанс спіймати ворожі снаряди на орбіту", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} Ви стріляєте льодяними слізьми, які сповільнюють ворогів та перетворюють на лід тих, кого вб'ють#При поштовху, заморожені вороги починають котитися і розбиваються на 6 крижаних осколків", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Chargeable}} Заряджуваний (автоматично)#Поки ви не стріляєте, протягом 3 секунд накопичує значний запас сліз в роті#При стрільбі персонаж швидко випускає накопичені сльози", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Суттєво зменшує розміри Айзека, дозволяючи йому проходити між об'єктами#Ворожі снаряди можуть пролітати над персонажем", -- Pluto
	-- Full old Desc: "↑ {{Tears}} +0.7 Темп Стрiльби збільшено#Суттєво зменшує розміри Айзека, дозволяючи йому проходити між об'єктами#Ворожі снаряди можуть пролітати над персонажем"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} Створює додаткову Прокляту Кімнату на кожному поверсі#Покращує Прокляті Кімнати і нагороди в них#Створює випадкову монетку в кожній Проклятій кімнаті", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Отримання шкоди не так сильно знижує шанс на появу кімнат Диявола/Ангела", -- Act of Contrition
	-- Full old Desc: "↑ {{Tears}} +0.7 Темп Стрiльби збільшено#{{EternalHeart}} +1 Вічне Серце#{{AngelChance}} Кімнати Ангела можуть з'являтись, навіть якщо ви вже укладали угоду з Дияволом#Отримання шкоди не так сильно знижує шанс на появу кімнат Диявола/Ангела"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} У кожному магазині з'являється люк до ще одного магазину з унікальними товарами", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "Повністю перезаряджає ваш активний предмет", -- Battery Pack
	-- Full old Desc: "{{Battery}} Створює 2-4 батарейки#Повністю перезаряджає ваш активний предмет"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Дозволяє підіймати і кидати камені, динаміт, купки лайна, дружніх Діпів, Хостів та інші перешкоди#Дозволяє переносити їх між кімнатами", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "Розломи наносять шкоду та притягують ворогів, снаряди та розхідники", -- Ocular Rift
	-- Full old Desc: "5% шанс вистрілити слізьми, які створюють розломи на місці падіння#{{Luck}} 20% шанс при Удачі 15#Розломи наносять шкоду та притягують ворогів, снаряди та розхідники"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Компаньйон, який хаотично випускає шквал сліз у всі сторони", -- Boiled Baby
	-- Full old Desc: "Компаньйон, який хаотично випускає шквал сліз у всі сторони#Наносить 3.5 або 5.3 Шкоди кожною сльозою"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Компаньйон, який стріляє паралітичними слізьми#Заморожує ворогів, коли вбиває їх", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Реролить п'єдестали в кімнаті#25% шанс, що п'єдестальний предмет зникне", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "При отриманні персонажем шкоди, компаньйон злазить з вашої голови та скаче на ворога#Наносить 45 шкоди та викликає кам'яну хвилю#Після цього починає переслідувати ворогів", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Персонаж кричить, наносячи шкоду та відштовхуючи ворогів#Сила крику залежить від кількості зарядів у предмета", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Компаньйон-душа, яка помирає від одного удару, але воскресає на початку наступного поверху#Якщо вона не помре, на наступному поверсі створить {{SoulHeart}} 3 серця Душі, {{EternalHeart}} 2 Вічні серця, або предмет зі {{TreasureRoom}} Скарбниці чи {{AngelRoom}} кімнати Ангела", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} Якщо у гравця немає бомб, то можна поставити одну за половинку серця#Бомби залишають кривавий слід", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}} +1 Контейнер з червоним серцем#{{Heart}} Відновлює 4 червоні серця#{{HalfHeart}} Якщо у гравця немає бомб, то можна поставити одну за половинку серця#Бомби залишають кривавий слід"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Компаньйон-пердун#Пердить прямо перед зіткненням персонажа з ворогом/снарядом, чим відштовхує від вас небезпеку#Після пердіння дезактивується і відлітає у випадковому напрямку#Підійдіть до нього, щоб знову активувати", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "Вогонь може заблокувати до 4 пострілів та/або нанести контактну шкоду 4 рази, після чого гасне", -- Bird's Eye
	-- Full old Desc: "8% шанс вистрілити червоним вогнем, який блокує ворожі постріли та наносить контактну шкоду#{{Luck}} 50% шанс при Удачі 10#Вогонь може заблокувати до 4 пострілів та/або нанести контактну шкоду 4 рази, після чого гасне#Гасне через 10 секунд"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "Намагнічені вороги притягують до себе інших ворогів, снаряди та розхідники", -- Lodestone
	-- Full old Desc: "{{Magnetize}} 17% шанс вистрелити сльозою, що намагнічує ворогів#{{Luck}} 100% шанс при Удачі 5#Намагнічені вороги притягують до себе інших ворогів, снаряди та розхідники"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "Позначених ворогів атакуватимуть інші вороги", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17% шанс вистрелити сльозою, що позначає ворогів#{{Luck}} 100% шанс при Удачі 5#Позначених ворогів атакуватимуть інші вороги"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "Свій ефект для кожного персонажа", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "Бонус шкоди повільно знижується протягом 3 хвилин#Вбивайте ворогів, щоб продовжити тривалість ефекту", -- Red Stew
	-- Full old Desc: "↑ {{Damage}} +21.6 Шкоду тимчасово збільшено#{{Heart}} Повне здоров'я#Бонус шкоди повільно знижується протягом 3 хвилин#Вбивайте ворогів, щоб продовжити тривалість ефекту"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Прибирає всі артефакти та розхідники з інвентаря персонажа#Телепортує вас в унікальну спальню з розхідниками, скринями та люком#За кожен втрачений артефакт, вам пропонують вибір із 3 нових предметів", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Ви можете стріляти ключами щоб наносити шкоду ворогам, відкривати двері та знищувати перешкоди#З ворогів, вбитих ключем, може випасти вміст скринь, в тому числі артефакти", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 ключів#Ви можете стріляти ключами щоб наносити шкоду ворогам, відкривати двері та знищувати перешкоди#З ворогів, вбитих ключем, може випасти вміст скринь, в тому числі артефакти"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#Ви можете топтати ворогів та перешкоди", -- Mega Mush
	-- Full old Desc: "Персонаж стає гігантом на 30 секунд, ефект працює між кімнатами#Поки ви гігант:#↑ {{Damage}} +300% множник шкоди#↑ {{Range}} +7 Дальнiсть збільшено#↓ {{Tears}} -60% Скорострiльнiсть знижено#Ви можете топтати ворогів та перешкоди#Повна невразливість"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 627] = "Наносить шкоду ворогам", -- Knife Piece 2
	-- Full old Desc: "Разом з {{Collectible626}} 1 частиною ножа утворюють ножа-компаньйона#Наносить шкоду ворогам#Може відкрити двері з плоті"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Ви потрапляєте на поверх, який містить усі ігрові предмети#!!! Ви можете взяти тільки 1 предмет#Обравши артефакт, ви повернетесь в кімнату, в якій ви були", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Орбітал, що стріляє броньованими слізьми по ворожих снарядах", -- Bot Fly
	-- Full old Desc: "Орбітал, що стріляє броньованими слізьми по ворожих снарядах"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Розрізає усіх ворогів у кімнаті навпіл, створючи по 2 зменшені копії ворога зі значно меншим запасом здоров'я", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Імунітет до вогню, спантеличення, страху, отрути та токсичних газів", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 Удачу збільшено#Імунітет до вогню, спантеличення, страху, отрути та токсичних газів"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Поки у кімнаті є вороги, створює розломи в підлозі#Коли ви наступаєте на ці розломи, з них вилітають вибухові привиди", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Пасивно створює компаньйона, який рухається в напрямку стрільби персонажа#При використанні, персонаж міняється місцями зі Стібком і отримує короткочасну невразливість#Телепортація в перешкоди та ворогів може завдати шкоди чи знищити їх", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Повертає вас на 1 поверх і починає новий забіг#Предмети, характеристики та підібрані розхідники зберігаються в інвентарі персонажа", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "Вороги отримують шкоду, коли їх відштовхує на стіни чи перешкоди", -- Knockout Drops
	-- Full old Desc: "10% шанс вистрілити кулаком з сильним відштовхуванням та ефектом спантеличення#{{Luck}} 100% шанс при Удачі 9#Вороги отримують шкоду, коли їх відштовхує на стіни чи перешкоди"
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "Персонаж кидає гумкою, яка миттєво вбиває ворога#Вороги цього типу не будуть з'являтися до кінця забігу#Наносить 15 шкоди босам#Резинка \"стирає\" боса, якщо удар нею був смертельним#Може бути використана лише 1 раз за поверх", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Вивергає потік полум'я#Заряджається на 1 поділку за кожну смерть ворога", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Створює ланцюг зі сліз за вами під час бою#Сльози наносять по 3.5 шкоди кожна", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Перетворює {{EmptyHeart}} 1 Контейнер Червоних сердець або {{SoulHeart}} 2 серця Душі в {{BrokenHeart}} Розбите серце, яке ніколи не буде заповнене#Створює предмет з пулу поточної кімнати#З кожним використанням збільшується шанс, що Чарівна Шкіра замінить майбутні предмети собою, якщо Айзек не триматиме її в інвентарі#33% після 1 використання, 50% після 2, 100% після 3#Шанс зменшується, якщо Чарівна Шкіра вже є на одному з п'єдесталів поточного поверху#{{Warning}} Одноразовий для персонажа Загублений", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 644] = "↑ Підвищує вашу найнижчу характеристику#Створює {{Coin}} 3 монетки, {{Bomb}} 1 бомбу або {{Key}} 1 ключ, залежно від того, чого у вас найменше", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Тератома-орбітал#Наносить контактну шкоду#Розділяється на 2 менші копії себе після отримання/нанесення 3 ударів#Менші копії розриваються на синіх павуків", -- Tinytoma
	-- Full old Desc: "Тератома-орбітал#Блокує постріли#Наносить контактну шкоду#Розділяється на 2 менші копії себе після отримання/нанесення 3 ударів#Менші копії розриваються на синіх павуків#Відновлюється через 5 секунд після повного зникнення"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} Бомби випускають Сірчані криваві лазери на 4 сторони", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 бомб#{{Collectible118}} Бомби випускають Сірчані криваві лазери на 4 сторони"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Активні предмети не заряджаються від зачистки кімнат#Натомість вони заряджаються, коли ви наносите шкоду ворогам#Формула: (40 + 20 * поверх) шкоди = 1 заряд", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Мініатюрна Сливова Крихітка-компаньйон", -- Fruity Plum
	-- Full old Desc: "Мініатюрна Сливова Крихітка-компаньйон#Літає по діагоналі по кімнаті, стріляючи слізьми назад#Сльози наносять 3 шкоди#Наносить 6 контактної шкоди за секунду"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "Викликає дружню Сливову Крихітку в поточну кімнату на 10 секунд", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Компаньйон, що випромінює ауру та повільно прямує до {{BossRoom}} кімнати боса#Прискорюється, якщо ви її випереджаєте і, навпаки, сповільнюється, коли персонаж відстає#Поки ви стоїте в аурі:#{VAR:EFFECTLIST}#50% шанс ігнорувати отриману шкоду", -- Star of Bethlehem
	-- Full old Desc: "Компаньйон, що випромінює ауру та повільно прямує до {{BossRoom}} кімнати боса#Прискорюється, якщо ви її випереджаєте і, навпаки, сповільнюється, коли персонаж відстає#Поки ви стоїте в аурі:#↑ {{Damage}} x1.8 множник шкоди#↑ {{Tears}} x2.5 множник темпу стрiльби#Самонавідні сльози#50% шанс ігнорувати отриману шкоду"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Компаньйон, що ковзає по кімнаті, коли ви його штовхаєте#{{Freezing}} Сповільнює ворогів та наносить їм шкоду при контакті, заморожує вбитих монстрів", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Поки ви тримаєте цей предмет, вороги-не-привиди при смерті будуть залишати малі червоні душі#При активації предмета, ці душі вибухають", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} Інші пігулки при використанні створюють Чорне серце", -- False PHD
	-- Full old Desc: "{{Heart}} +1 Чорне серце#{{Pill}} Ідентифікує всі пігулки#{{Pill}} Хороші пігулки стають поганими#↑ {{Damage}} Пігулки, що знижують ваші характеристики, додатково збільшують вашу шкоду на +0.6#{{BlackHeart}} Інші пігулки при використанні створюють Чорне серце"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Орбіталь-дзиґа, який блокує ворожі постріли#{VAR:ONUSEEFFECT}", -- Spin to Win
	-- Full old Desc: "Орбіталь-дзиґа, який блокує ворожі постріли#Наносить 10.5 контактної шкоду за секунду#При активації, збільшує вашу {{Speed}} ↑ +0.5 Швидкість та значно прискорює орбіталі"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "<Item not obtainable>", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "При смерті, ворогів розриває на 1-16 сліз, що летять у випадкових напрямках#Сльози отримують ефекти сліз персонажа", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Створює міні-Айзеків, коли персонажу завдають шкоди#Вони переслідують і стріляють у ворогів", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Створює 2 портали на початку кожного поверху#Портали зникають, коли ви покидаєте кімнату#{{ColorRed}}Червоний: {{CR}}{{BossRoom}} Кімната боса#{{ColorYellow}}Жовтий: {{CR}}{{TreasureRoom}} Скарбниця#{{ColorBlue}}Синій: {{CR}}{{SecretRoom}} Секретна кімната", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Створює стаціонарного компаньйона на місці смерті ворога#До 5 компаньйонів", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "Кожні 6 секунд персонаж отримує ефект невразливості на 1 секунду#Мигає прямо перед активацією/дезактивацією ефекту", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Їжа відновлює 3 червоні серця#Артефакти на п'єдесталах періодично змінюються на їжу і назад#↓ {{Speed}} -0.03 Швидкість знижено", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1 Контейнер з червоним серцем#{{Heart}} Повне здоров'я#Їжа відновлює 3 червоні серця#Артефакти на п'єдесталах періодично змінюються на їжу і назад#Коли ви піднімаєте артефакти їжі: #↑ {{Damage}} тимчасове збільшення +3.6 шкоди#↑ 2 незначні перманентні підвищення характеристик#↓ {{Speed}} -0.03 Швидкість знижено"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Показує вміст {{Chest}} Скринь, {{GrabBag}} Мішечків, Крамарів та Вогнищ, перш ніж вони були розкриті", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "Хранитель може піднімати будь-які пасивні артефакти, в тому числі сюжетні", -- Strawman
	-- Full old Desc: "{{Bomb}} +1 Бомба#{{Player14}} Створює Хранителя як другого персонажа з власним здоров'ям#Коли він помирає, з'являються сині павуки, а предмет зникає з вашого інвентарю#{{DevilRoom}} Поки Хранитель живий, предмети в Кімнаті Диявола продаються за монети#Хранитель може піднімати будь-які пасивні артефакти, в тому числі сюжетні# !!! При смерті Хранителя, ці артефакти зникнуть"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "Розпочинає процес підйому для доступу до поверху Дім#Брелки, залишені у {{TreasureRoom}} Скарбницях чи {{BossRoom}} Кімнатах боса, перетворюються у {{Card78}} Зламаний Ключ", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "За зачистку кімнат ви отримаєте дві нагороди на вибір#Коли ви піднімаєте одну з нагород, інша зникає", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "Випадкове перманентне збільшення характеристик, коли персонаж піднімає червоні серця#{{Heart}} Створює 1 Червоне серце", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilRoom}} Предмети угод з Дияволом тепер продаються за монети#{{Shop}} Предмети у магазині продаються за серця#Розхідники у магазинах безкоштовні, але оточені шипами", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{DevilRoom}} Якщо ви заходили в кімнату Диявола, але нічого там не взяли/купили:#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{DevilRoom}} Якщо ви заходили в кімнату Диявола, але нічого там не взяли/купили:#{{SoulHeart}} +1 серце Душі#↑ {{Damage}} +1 Шкоду збільшено"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "При смерті, душа Айзека залишається прикованою до його тіла і продовжує бій з половинкою серця#Персонаж воскресає через 10 секунд, якщо душа не помре#Предмет перезаряджається при підйомі серця Душі", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "Коли вам завдають шкоди:#Відчиняє всі зачинені двері в кімнаті#Відображає на карті випадкову кімнату#Знищує усі камені з мітками та камені над криївками#Може відкривати сюжетні двері#Може відобразити {{UltraSecretRoom}} Ультра секретну кімнату", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "Якщо на початку нового поверху у вас одне червоне серце чи менше, дає {{EmptyHeart}} порожній контейнер червоних сердець#Ніякого ефекту для персонажів, які не можуть мати червоних сердець", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "Коли вам завдають шкоди, час зупиняється на 3 секунди#Персонаж стає душею та покидає тіло#У вигляді душі персонаж отримує політ, спектральні сльози та ігнорує перший удар", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} Атака зі швидкою зарядкою#Персонаж стріляє самонавідними спектральними зародками, що наносять x2.8 шкоди", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} Компаньйон, що стріляє мініатюрною атакою Пащі Порожнечі", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} Додаткова заряджувана атака Сірчаним лазером, який стріляє з дупи персонажа#Лазер заряджається, поки ви стріляєте", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Компаньйон, що наносить ворогам контактну шкоду і летить в напрямку вашої стрільби#Поглинає розхідники в себе на шляху#Кожен поглинутий розхідник збільшує розміри компаньйона, його шкоду та створює Синю Муху#За кожні 4 розхідники створює портал у не зачищену кімнату", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Щупальце, що вилазить з-під землі та хапає ворогів#Спіймані вороги протягом 4 секунд не можуть рухатись, отримують 8 шкоди за секунду та ефект сповільнення", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "При смерті вороги створюють 1-2 уламки кісток, що можуть блокувати снаряди та наносять контактну шкоду", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Шанс створити привидів при вбивстві ворогів#Привиди переслідують ворогів та наносять контактну шкоду#Контактна шкода за секунду становить х2 шкоди персонажа#Привид вибухає через 5 секунд, наносячи 7 шкоди ворогам поблизу#Вибух не завдає вам шкоди", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Створює випадковий вогник, що може стріляти різноманітними слізьми, блокувати ворожі атаки та наносить контактну шкоду#Кількість вогників, яких можна створити за раз, збільшується з кожним використанням предмета й може сягати 12", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "{{SoulHeart}} Перманентне збільшення характеристик за кожне підняте Серце Душі", -- Soul Locket
	-- Full old Desc: "{{SoulHeart}} Перманентне збільшення характеристик за кожне підняте Серце Душі#{{SoulHeart}} Створює 1 Серце Душі"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Створює випадкового дружнього монстра, який повторює за персонажем рухи та атаки", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Ви воскресаєте в поточній кімнаті з половинкою серця, значно меншими розмірами тіла та збільшеною +0.2 Швидкістю#При воскресінні відбувається кривавий вибух, що наносить 35 шкоди ворогам поблизу", -- Inner Child
	-- Full old Desc: "+1 додаткове життя#Ви воскресаєте в поточній кімнаті з половинкою серця, значно меншими розмірами тіла та збільшеною +0.2 Швидкістю#При воскресінні відбувається кривавий вибух, що наносить 35 шкоди ворогам поблизу"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "П'єдестали швидко перемикаються між 5 випадковими предметами", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "При зіткненні, вороги відлітають від персонажа#Якщо відкинуті вороги врізаються в перешкоди, стіни чи інших ворогів, вони отримують шкоду#Шкода обчислюється за формулою 8+2*поверх#50% шанс, що персонаж проігнорує контактну шкоду#50% шанс, що ворожий снаряд відскочить від персонажа без нанесення шкоди", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Предмети з Якістю {{Quality0}}/{{Quality1}} більше не будуть з'являтися#33% шанс зареролити предмети Якості {{Quality2}} в Якість {{Quality3}} або {{Quality4}}", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Створює шипи у кожній {{DevilRoom}}кімнаті Диявола#За отримання шкоди від шипів, ви можете одержати винагороду:#35%: Нічого#33%: ↑ {{Damage}} +0.5 Шкоду збільшено#15%: {{Coin}} 6 монет#10%: {{BlackHeart}} 2 Чорні серця#5%: {{DevilRoom}} Випадковий предмет Диявола#2%: Перетворення в Левіафана", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Створює нову муху за кожну зачищену кімнату#Максимум 16 мух-орбіталів", -- The Swarm
	-- Full old Desc: "8 мух-орбіталів, що перетворюються в Синіх мух після блокування ворожого удару#Створює нову муху за кожну зачищену кімнату#Максимум 16 мух-орбіталів"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "Кожен смертельний удар додає ще 2 розбиті серця#Ви помрете при 12 розбитих серцях", -- Heartbreak
	-- Full old Desc: "{{BrokenHeart}} 3 розбиті серця#↑ {{Damage}} +0.25 Шкоди за кожне розбите серце#Кожен смертельний удар додає ще 2 розбиті серця#Ви помрете при 12 розбитих серцях"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "Коли персонажу завдають шкоди, він отримує бонуси до {{Speed}} Швидкості та {{Tears}} Скорострільності на цілий поверх#Максимум до +1.02 Швидкість та +3 Скорострiльнiсть", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Аура довкола персонажа#Коли в ауру потрапляють вороги, над ним з'являються промені світла#Якщо ворог пробуде в аурі близько секунди, промінь впаде на нього, наносячи 3.5-152.5 шкоди#Аура росте кожного разу, коли персонажу завдають шкоди на поверсі", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Компаньйон, що стає клоном боса при вході в кімнату боса#Перемога над ним створює додатковий артефакт#Клон та оригінальний бос є повільнішими та мають 75% максимального здоров'я#Не може клонувати міні-босів та фінальних босів, на зразок Мами, Маминого Серця, Айзека, Сатани тощо#Відновлюється на початку наступного поверху", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Два компаньйони, що літають поруч#Стріляють слізьми з характеристиками та ефектами персонажа, але наносять лише 37.5% від вашої шкоди кожен", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "Лють накопичується за кожну зачищену кімнату#Після 4 кімнат, випускає великий лазер {{Collectible118}} Сірки при вході в наступну кімнату", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Коли персонаж використовує пігулку, карту чи руну, він також використовує копії 3 останніх Пігулок/Рун/Карт, які він застосовував після отримання Ехокамери", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Створює {{DirtyChest}} Стару Скриню, яка відкривається ключем, на початку кожного поверху#Може містити {{SoulHeart}} 1-3 Серця Душі, 3 брелки чи артефакти#Предмети вибираються з пулу {{AngelRoom}} кімнати Ангела, або належать Матусі чи Батьку", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Після отримання персонажем шкоди, створює орбітальний вогник, що існуватиме до кінця поверху#Максимум 6 вогників#Вогники стріляють у ворогів, але не блокують їх атаки", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Перемикає вашого поточного персонажа на Ісава молодшого й навпаки#У Ісава {{BlackHeart}} 3 Чорні серця, {{Damage}} +2 Шкоди та політ#У персонажів незалежні інвентарі артефактів та здоров'я#При першому використанні, Ісав отримує випадкові пасивні артефакти, відповідно до кількості в основного персонажа#{{Warning}} Смерть за будь-якого з персонажів завершить забіг", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Контактна шкода наносить 2x вашої шкоди + 3.5 за кожного зачепленого ворога#Вибух після закінчення ефекту наносить шкоду рівну нанесеній контактній", -- Dark Arts
	-- Full old Desc: "При використанні, дає {{Speed}} +1 Швидкість та можливість протягом 1 секунди проходити крізь ворогів та снаряди#Контактна шкода наносить 2x вашої шкоди + 3.5 за кожного зачепленого ворога#Вибух після закінчення ефекту наносить шкоду рівну нанесеній контактній"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Поглинає усі предмети в кімнаті та створює атакуючу муху-компаньйона за кожен#Ефекти мух залежать від поглинутих артефактів", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Персонаж стріляє слізьми тільки з одного ока", -- Stapler
	-- Full old Desc: "↑ {{Damage}} +1 Шкоду збільшено#Персонаж стріляє слізьми тільки з одного ока"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Персонаж здійснює ривок, під час якого піднімає ворогів чи босів у себе на шляху, а тоді кидає їх на землю#Кидком можна керувати#Кидок створює хвилю з каміння та наносить 50 +/-10 шкоди за кожне збільшення чи зменшення розмірів персонажа", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Збирає та зберігає в собі до 8 розхідників, які звідти не можна викинути#Коли сумка повна, застосуйте її ще раз, щоб створити предмет#Якість предмета залежить від якості розхідників", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "В артефакта, згенерованого при вході в кімнату, позаду з'являється другий напівпрозорий предмет#При використанні, міняє справжній та напівпрозорий артефакти місцями#Можна взяти обидва предмети, якщо активувати \"Перевернись\" після підняття першого#!!! Напівпрозорий артефакт зникне, якщо ви піднімете перший предмет та покинете кімнату", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Створює орбітального вогника з ефектом пасивного предмета#Вогник може бути знищеним#Предмети мають 25% шанс бути з пулу поточної кімнати, або з пулів Скарбниці, Магазину чи кімнати боса", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Забирає у персонажа половинку серця та створює компаньйона у вигляді згустку#Кожен вид сердець створює Згустки з різними характеристиками", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Повертає тіло Забутого з будь-якої відстані", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Зберігає всередині одну какашкову бомбу, яку можна застосувати пізніше", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} За кожні 3 монети, витрачені на покупки, ви отримаєте:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Створює {{Coin}} 3 випадкові монети та {{Key}} 1 ключ#{{Shop}} За кожні 3 монети, витрачені на покупки, ви отримаєте:#↑ {{Damage}} +0.5 Шкоду збільшено#↑ {{Range}} +0.25 Дальнiсть збільшено#↑ {{Speed}} +0.03 Швидкість збільшено"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Камені та вази створюють 0-2 синіх павуків при знищенні#У ворожих кімнатах камені можуть раптово створювати синіх павуків", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} Створює на продаж випадковий розхідник чи предмет з пулу магазину", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Створює певні розхідники залежно від кількості зарядів#При повній зарядці, активує один з випадкових сильних ефектів#Нагороди за рівні зарядки:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Всі наступні предмети будуть 'заглючені'#Випадкові ефекти для 'заглючених' предметів", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Заковує найближчого ворога на 5 секунд, не даючи йому рухатись", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Реролить всі предмети в кімнаті, зменшуючи їх ID на одиницю", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} Коли ворог завдає вам шкоди, створює половинку або ціле червоне серце#Створені серця відлітають від персонажа та зникають через 1.5 секунди", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Після нанесення певної кількості шкоди, персонаж починає червоніти#Відпустіть кнопки стрільби, щоб активувати один з випадкових ефектів {{Player25}}Гнилого ???:#Кинути випадкову какашку#Розлити слизьку рідину#Випустити отруйний газ#Поставити під собою 5 підпалених бомб", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Натисніть на кнопку стрільби двічі, щоб відхаркнути кров#Наносить 150% вашої шкоди ворогам перед вами#1 секунда затримки між харканням#{{BrimstoneCurse}} Уражені вороги отримують додаткову шкоду від лазерів Сірки", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Бомби створюють привидів, які наносять контактну шкоду та вибухають через 10 секунд", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 бомб#Бомби створюють привидів, які наносять контактну шкоду та вибухають через 10 секунд"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Створює демонічного компаньйона, з'єднаного з персонажем#Відтворює ефекти та характеристики сліз персонажа", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Ви кидаєте власною головою, яка наносить контактну шкоду та перетворюється на стаціонарну турель#Тіло не може стріляти#Активуйте предмет ще раз або наступіть на голову, щоб повернути її на плечі", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} Створює випадкову руну або камінь душі", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} +1 Шкоду збільшено#{{Rune}} Створює випадкову руну або камінь душі"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} 33% шанс отримати монету при знищенні каменів", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} +20% шанс на випадіння монети з купки лайна#Ви пукаєте, коли підбираєте монету#{{Poison}} Ваш пук відштовхує і отруює ворогів", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% шанс на випадковий ефект гриба на 1 кімнату", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible318}} Високий шанс отримати \"Близнюка\" при отриманні шкоди", -- Umbilical Cord
	-- Full old Desc: "Коли у вас залишається половина серця, або менше, ви отримуєте компаньйона {{Collectible100}} Маленький Стівен#{{Collectible318}} Високий шанс отримати "Близнюка" при отриманні шкоди"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Коли ви отримуєте шкоду, є шанс нанести 80 шкоди усім ворогам у кімнаті#{{Collectible35}} Шкода від чорних сердець і некрономікону подвоюється", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} 25% шанс отримати половинку червоного серця при піднятті монети", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} 25% шанс отримати бомбу при піднятті монети", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} 25% шанс отримати ключ при піднятті монети", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Маскує вашого персонажа#Збиває з пантелику ворогів#Можна використати, щоб відчинити двері у 'Дім'", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ Підвищення характеристик від предмету на 20% ефективніше", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "Ви у першу чергу втрачаєте червоні серця, а вже потім інші види сердець #!!! Втрата червоних сердець може знизити ваш шанс на кімнату Диявола/Ангела", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} Магазини з'являються у 'Матці' і 'Трупі'", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Золоті кімнати з'являються у 'Матці' і 'Трупі'", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "Заповнює половину порожніх червоних/кісткових сердець при переході на інший поверх#Мінімум половинка серця буде вилікувана", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{SoulHeart}} 17% шанс на появу половинки серця Душі при підбиранні монет", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% шанс на випадковий ефект шприца на 1 кімнату", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Бомби вибухають значно швидше", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Збільшує розмір пука", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Двері, замки і золоті скрині тепер можна відчинити вибухівкою#Також можна відкрити двері в 'Дім'", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "При переході на інший поверх, з'являється до 4 предметів з попереднього поверху", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "При використанні активного артефакта, він замінюється на інший", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} +4 Удачі для артефактів, ефект яких залежить від неї", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Підбирання сердець може конвертувати їх у синіх павуків#Працює навіть при повному ХП#Ефект може забрати серця, які потрібні для зцілення", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Підвищує швидкострільність компаньйонів", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} При переході на новий поверх, створює 4 сині вогники з 'Книги чеснот'", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Сльоза може повернутися на 90 градусів", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Знищується, коли персонаж отримує шкоду", -- Perfection
	-- Full old Desc: "↑ {{Luck}} +10 Удачу збільшено#Знищується, коли персонаж отримує шкоду"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{RedTreasureRoom}} Золоті кімнати мають угоду з дияволом, замість безкоштовного предмету", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "17% шанс зарядити активний артефакт на 1 поділку після підняття монети", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Змушує компаньйонів кружляти навколо Ісаака", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Активує ваш активний артефакт при отриманні шкоди", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "При вході у кімнату, двері якої відкриваються ключем, ви потрапляєте у кімнату з 'Синьої Матки'#Зачистика цієї кімнати відкриває двері до оригінальної кімнати, в яку ви прямували#Ключі не витрачаються", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Шипи не наносять вам шкоди# Також діє на{{CursedRoom}}Прокляту кімнату й інші шипові об'єкти", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "+9%, якщо він вже з'являвся на попередніх поверхах#Планетарій може з`явитися у локації \"Матка\" і \"Труп\"", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChance}} +24% до шансу на планетарій, якщо він ще не з'являвся#+9%, якщо він вже з'являвся на попередніх поверхах#Планетарій може з`явитися у локації "Матка" і "Труп""
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% шанс на ефект випадкового артефакту Мами", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "50% шанс появи випадкового одноразового ігрового кубика при вході у кімнату#Кубик зникає, якщо ви покинете кімнату#Кубик розміщується у слотах для карток/пігулок, при цьому не займаючи сам слот", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Створює {{TreasureRoom}} Золоту Кімнату і {{Shop}} Магазин у 'Соборі'", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} +1 контейнер Червоних сердець, поки ви тримаєте цей брелок#{{Player14}} +1 Контейнер-монета для Хранителя", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "При отримані шкоди, Ісаак губить 2 випадкові розхідники#Розхідники, що випали, можуть змінювати свою варіацію, наприклад звичайний ключ у золотий, звичайна бомба у троль-бомбу і так далі", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} Золоті скрині мають більше предметів ніж звичайно", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 ключ при підбиранні#{{GoldenChest}} Міняє усі скрині (окрім Старих/Мега) на золоті скрині#{{GoldenChest}} Золоті скрині мають більше предметів ніж звичайно"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} При переході на новий поверх створює 1 мішечок", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Створює {{TreasureRoom}} Золоту Кімнату і {{Shop}} Магазин у 'Шеолі'", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} 50% перетворитися на Азазеля після зачистки кімнати#Ефект триває поки ви не зачистите і не вийдете з наступної кімнати", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Усі Діпи (маленькі какахи) тепер не наносять вам шкоди#Створює 1 випадкового Діпа після зачищення кімнати", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} Створює ще 1 підпалену бомбу поруч з тою, що ви поставили", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "З поверху 'Матка' і далі, заміняє усі монети і ключі на інші випадкові розхідники", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50% шанс отримати ефект випадкового пасивного предмета на 1 кімнату", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "25% шанс створити дружнього Боні після зачистки кімнати", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} +1 кістяне серце при переході на інший поверх", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "Поки при вас, враховується як 1 предмет до трансформації 'Гаппі'", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} 33% шанс створити прохід у Червоні кімнати після зачистки кімнати#Шанс нижче коли ви вже у Червоній кімнаті", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50% шанс, що у Кімнаті Диявола предмети будуть за монети", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "{{Coin}} Телепортує персонажа у випадкову кімнату при підбиранні монети#Може телепортувати до Секретної кімнати", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} Дає можливість узяти один предмет у кімнаті Диявола безкоштовно#Брелок знищиться#!!! Підбирання предмету з кімнати диявола впливає на шанс кімнати Ангела", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Запобігає появи Крампуса у кімнаті Диявола#Дає нові спеціальні варіації кімнат диявола з більшою кількістю ворогів, предметів і чорних сердець", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} +10% до шансу появи кімнати Диявола#Запобігає появи Крампуса у кімнаті Диявола#Дає нові спеціальні варіації кімнат диявола з більшою кількістю ворогів, предметів і чорних сердець"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Відкриває прохід до битви з босом 'Хаш'", -- Strange Key
	-- Full old Desc: "Відкриває прохід до битви з босом 'Хаш'#При використанні {{Collectible297}} ящика Пандори, дає 6 артефактів з випадкового пула предметів"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Створює один кривавий згусток, який повністю повторює рухи і атаки персонажа#{{Damage}} Атаки згустка наносять 35% шкоди персонажа#Компаньйон відроджується після зачищення кімнати, якщо він був убитий", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "Створює {{Chest}} скриню після зачистки {{ChallengeRoom}} 'Кімнати Виклику', створює артефакт після зачистки {{BossRushRoom}} 'Бос Рашу'", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "50% шанс вибухнути після отримання шкоди#Працює з ефектами бомб", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Компаньйони копіюють рухи Ісаака#Тримайте кнопку 'Викинути', щоб компаньйони зупинилися на місці", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Компаньйон, який слідує за Айзеком і стріляє спектральними сльозами#Копіює ваші характеристики, наносить половину вашої шкоди#Має лише 1 хп#Відроджується кожен поверх", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "При активуванні активного артефакту, активує ще 1-2 випадкові активні артефакти", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Створює 5 синіх вогників при вході в {{AngelRoom}} кімнату Ангела#25% шанс створити віспа при пожертвуванні жебракам", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50% шанс дублювати компаньйонів на 1 кімнату", -- The Twins
	-- Full old Desc: "50% шанс дублювати компаньйонів на 1 кімнату#Якщо немає компаньйонів, створює {{Collectible8}} Братика Боббі або {{Collectible67}} Сестричку Меггі"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} Магазини продають компаньйонів за 10 монет", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "17% шанс створити випадкову Сарану при вбивстві ворога", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} Створює 1 Сарану Безодні", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50% шанс створити додатковий невідомий предмет у золотій кімнаті#50% шанс, що таємний предмет у альтернативній золотій кімнаті буде розкритий", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} Якщо вбити паралізованого ворога, він перетвориться на шматок льоду", -- Ice Cube
	-- Full old Desc: "20% шанс паралізувати всіх ворогів у кімнаті#{{Freezing}} Якщо вбити паралізованого ворога, він перетвориться на шматок льоду"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Активує щит на 1 секунду після вбивства ворога#Вбивство ворогів дає вам ще 1 секунду щита", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} Телепортує вас до Скарбниці#{{Planetarium}} Якщо на поверсі є Планетарій, телепортує туди", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} Перетворює всі розхідники, скрині та ворогів, окрім босів, на бомби", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} Перетворює всі розхідники, скрині та ворогів, окрім босів, на монети", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} Перетворює всі розхідники, скрині та ворогів, окрім босів, на ключі", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{Heart}} Перетворює всі розхідники, скрині та ворогів, окрім босів, на серця", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Створює люк на наступний поверх#{{LadderRoom}} Створює вхід до криївки, якщо використано на декоративних елементах підлоги (трава, малі камінці, папірці, розсипані коштовності, інше)", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "<MISSING>", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HolyMantle}} Одноразовий ефект Святої Мантії#(Блокує першу нанесену шкоду)", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "{{Rune}} Активує ефект випадкової руни#Ефект осколка слабший, ніж у справжньої руни", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Викидає на підлогу усі ваші серця та розхідники, залишаючи вас з половинкою серця#Монети та бомби можуть бути викинуті як {{Collectible74}}Четвертак або {{Collectible19}}Бум!, якщо можливо", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "Аура, що відштовхує ворогів та снаряди, протягом 1 хвилини", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "Матусина Нога протягом 1 хвилини б'є по підлозі", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Телепортує вас у додаткову кімнату боса з додатковими винагородами#Бос обирається з пулу босів наступних 2 поверхів", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Створює 1 предмет з пулу поточної кімнати#{{BrokenHeart}} Замінює 1 Контейнер Червоного серця чи 2 серця Душі на Розбите серце", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}", -- VII - The Chariot?
	-- Full old Desc: "На 10 секунд перетворює персонажа на невразливу нерухому статую#↑ {{Tears}} Гігантська скорострільність на час ефекту"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "Створює 2-4 Золоті скрині", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "Перетворює розхідники та предмети в кімнаті на монети відповідно до їх цін у {{Shop}} Магазині", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "Випадковий ефект Кімнати Кубиків", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Weakness}} Вороги у поточній кімнаті слабші, повільніші та отримують подвійну шкоду#Триває 1 хвилину", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#З ворогів випадають монети при смерті", -- XII - The Hanged Man?
	-- Full old Desc: "{{Player14}} Перетворює персонажа на Хранителя на 30 секунд#Потрійний постріл та ↓ {{Speed}} -0.1 Швидкість знижено#З ворогів випадають монети при смерті"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "Застосовує ефект {{Collectible545}} Книги Мертвих", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "Персонаж ковтає 5 випадкових пігулок", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "Застосовує ефект {{Collectible33}} Біблії#Дає політ та {{Collectible390}} Серафима на 30 секунд", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Створює 6 скупчень випадкових каменів та перешкод#Високий шанс на появу каменів з мітками", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Видаляє найстаріший пасивний предмет з інвентарю (ігнорує стартові предмети)#Створює 2 випадкові артефакти з пулу поточної кімнати", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} Телепортує вас до Ультра Секретної Кімнати#Створює червоні кімнати для сполучення зі звичайними кімнатами", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "Прокляття Темряви", -- XIX - The Sun?
	-- Full old Desc: "Для поточної кімнати: #↑ Політ та спектральні сльози#↑ {{Damage}} +1.5 Шкоду збільшено#{{BoneHeart}} Перетворює ваші Червоні серця в Кісткові#Прокляття Темряви"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "Створює {{RestockMachine}} автомат для поповнення запасів (ресток)", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "Створює люк до {{LadderRoom}} криївки", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} Одноразовий Червоний Ключ", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Копіює ефект останньої застосованої пігулки/руни/карти/душі чи активного предмета", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Реролить предмети в кімнаті#Артефакти на п'єдесталах щосекунди змінюються між оригінальним та новим", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "Оточує персонажа червоною бульбашковою аурою в поточній кімнаті#{{HalfHeart}} З кожного вбитого ворога випадає половинка червоного серця, яка зникає через 2 секунди", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Відкриває всі двері в кімнаті#{{Collectible580}} Відкриває всі можливі проходи до Червоних кімнат з поточної кімнати", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "Ефект {{Collectible705}} Темних Мистецтв#Перетворює персонажа у фантома, що може проходити крізь ворогів, паралізуючи їх та через кілька секунд наносячи шкоду їм усім", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "{{Poison}} Спочатку персонаж 8 разів випускає хмарки отруйного газу з коричневою рідиною#Потім залишає за собою слід з 7 Дупних Бомб#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "{{Poison}} Спочатку персонаж 8 разів випускає хмарки отруйного газу з коричневою рідиною#Потім залишає за собою слід з 7 Дупних Бомб#Поки ви стоїте в рідині: # {{Tears}} +1.5 Темп Стрільби збільшено#↑ {{Damage}} +1 Шкоду збільшено"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "Для поточної кімнати: #Викликає 14 Мертвих Птахів, що атакують ворогів", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "Перетворює персонажа в {{Collectible704}} Берсерка з ближньою атакою на 10 секунд#↑ +0.4 Швидкість збільшено#↑ Темп Стрiльби збільшено#↑ +3 Шкоду збільшено#{{Timer}} Кожне вбивство подовжує ефект на 1 секунду", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "Активує {{Collectible441}} Мега Заряд на 7.5 секунд", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Персонаж миттєво помирає та воскресає з половинкою серця та тимчасовою невразливістю#Душа автоматично використовується, якщо персонажу завдали смертельного удару (працює як додаткове життя)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Реролить предмети та розхідники у поточній кімнаті#Нові предмети обираються з випадкового пулу", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "Персонаж помирає та воскресає за {{Player10}} Загубленого для поточної кімнати#Ви можете взяти 1 предмет в {{DevilRoom}} кімнаті Диявола безкоштовно, але інші зникнуть#Безкоштовний прохід у Мавзолей та Геєну", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Створює 1 випадкового компаньйона", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Створює 15 випадкових Саран", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "Створює {{Player16}} Загубленого як другого персонажа на 1 кімнату", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "Створює 6 вогників {{Collectible584}} Книги Чеснот з випадковими якостями", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "Створює {{Player20}} Ісава як другого персонажа на 1 кімнату#Він з'являється зі стількома випадковими предметами, скільки є у вашого персонажа", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Кількість бомб та ключів міняються місцями#Золоті бомби та ключі також перемішуються", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "Графіка стає піксельною на 30 секунд", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Сповільнює усіх ворогів та Ісаака в кімнаті", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "Прискорює усіх ворогів та Ісаака в кімнаті#Ефект спрацьовує знову через 30 та 60 секунд", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Випадковий ефект пігулки#Самознищується через кілька використань", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} Отруює цілу кімнату", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "Наносить 2 серця шкоди персонажу#Якщо у гравця менше 2 сердець, перетворюється на пігулку 'Повне Здоров'я'", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Кількість бомб та ключів міняються місцями#Збільшує кількість ключів і бомб на 50%#Золоті бомби та ключі також перемішуються", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Під вами з'являється декілька Мега-троль-бомб", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} Створює біля персонажа Великого Фаната муху-орбітала#Немає ліміту", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "Повністю заряджає ваш активний предмет", -- 48 Hour Energy!
	-- Full old Desc: "Повністю заряджає ваш активний предмет#{{Battery}} Дає 3-4 батарейки"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "Спустошує всі контейнери червоних сердець, окрім одного", -- Hematemesis
	-- Full old Desc: "Спустошує всі контейнери червоних сердець, окрім одного#{{Heart}} Створює 4-7 червоних сердець"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Ви не можете рухатися 4 секунди", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} Усі вороги у кімнаті - ваші друзі", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Під вами з'являється велика калюжа, яка завдає шкоди усім ворогам", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "Ви стріляєте по діагоналі протягом 60 секунд", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Ви какаєте 4 секунди", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "Прокляття 'Лабіринт' на весь поверх", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Ви збільшуєтесь#Не впливає на хітбокс", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Ви зменшуєтесь#Ваш хітбокс стає меншим", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Створює 2 синіх павуків на кожну купку лайна у кімнаті", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Створює 2 синіх мух на кожного ворога у кімнаті#Створює 2-6 синіх павуків, якщо в кімнаті нікого немає", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Графіка стає піксельною на 90 секунд", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Під вами з'являється слизька калюжа", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "Під вами з'являється сповільнююча калюжа", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "Сповільнює всіх ворогів у кімнаті", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Прискорює всіх ворогів у кімнаті", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Знищує всі брелки, що у вас є, і дає їх ефект перманентно#Відновлює 1 Червоне серце за кожен проковтнутий брелок#Ефект не спрацьовує для персонажів без червоних сердець", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "{{Collectible149}} Ваш наступний постріл перетворюється у купу отруйних вибухових снарядів, на зразок 'Іпекаку'", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Створює останню таблетку, що ви використали", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Двічі підвищує 1 випадкову характеристику#↓ Двічі знижує іншу випадкову характеристику#Не зменшує характеристик, якщо є {{Collectible75}}Доктор Наук, {{Collectible46}}Щаслива Ніжка чи {{Collectible303}}Діва#Не збільшує характеристик з {{Collectible654}}Фальшивий Доктор Наук", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Випадковий ефект пігулки з кінською дозою#Самознищується через кілька використань", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
