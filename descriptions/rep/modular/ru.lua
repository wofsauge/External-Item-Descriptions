local languageCode = "ru"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "↑ {{Speed}} +0.2 скорости", -- The Virus
	-- Full old Desc: "{{Poison}} Отравляет врага при касании#↑ {{Speed}} +0.2 скорости"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "{{Poison}} Отравляющая бросаемая бомба#Наносит 185 + Ваш урон#Создает отравленное облако", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Повышает шанс выигрыша в игровых автоматах#Увеличивает шанс награды после зачистки комнаты#Заменяет пилюли с плохим эффектом на хорошие", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 удача#Повышает шанс выигрыша в игровых автоматах#Увеличивает шанс награды после зачистки комнаты#Заменяет пилюли с плохим эффектом на хорошие"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "Если такой урон превысит 60, то он будет равен 5х вашего урона + 30#↓ {{Tears}} -60% скорострельности", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Слёзы-бомбы#{{Damage}} Каждая бомба наносит 10х вашего урона#Если такой урон превысит 60, то он будет равен 5х вашего урона + 30#↓ {{Tears}} -60% скорострельности"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "Притягивает подбираемые предметы#Сундуки открываются на расстоянии#Игнорирует урон от шипастых сундуков", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} Заряжаемые слёзы#↑ {{Damage}} До 400% урона", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "↑ {{AngelDevilChance}} +17.5% к шансу появления сделок при удержании этой книги", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 синее сердце#При использовании, босс этажа будет заменён на всадника#↑ {{AngelDevilChance}} +17.5% к шансу появления сделок при удержании этой книги"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "При использовании создает на полу люк на следующий этаж#{{LadderRoom}} Создаёт Ретро сокровищницу, если использовано на клетке пола с декорацией (трава, маленькие камешки, бумажки, и т.д.)", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Раскрывает типы комнат в радиусе 2 комнат#{{SecretRoom}} Также может раскрыть Секретные и Суперсекретные комнаты#Блокирует снаряды, падающие сверху", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "<MISSING>", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "Призывает случайного спутника#Он остается до конца этажа", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "<MISSING>", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "{{Bomb}} +5 бомб", -- Bob's Curse
	-- Full old Desc: "{{Poison}} Отравляющие бомбы#Бомбы оставляют ядовитое облако#{{Bomb}} +5 бомб"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} Один раз за комнату, при уменьшении здоровья до половины сердца, вы получаете 1 синее сердце#!!! Не действует для эффектов сдачи крови", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "При активации персонаж берёт кирку#Когда он ей размахивает, то разбивает камни и наносит урон врагам#Удары уменьшают заряд#Заряд восстанавливается на следующем этаже", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "↓ {{Range}} -20% дальности", -- Ipecac
	-- Full old Desc: "{{Poison}} Отравляющие взрывные слёзы#↑ {{Damage}} +40 урона#↓ {{Shotspeed}} -0.2 скорости слезы#↓ {{Tears}} -67% скорострельности#↓ {{Range}} -20% дальности"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "{{Damage}} Наносит 13% вашего урона#↓ {{Tears}} -33% скорострельности", -- Technology 2
	-- Full old Desc: "Бесконечный лазер из правого глаза#{{Damage}} Наносит 13% вашего урона#↓ {{Tears}} -33% скорострельности"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} Замедляет врагов на 4 секунды#При убийстве врага этим, появляется синий паук", -- Spider Butt
	-- Full old Desc: "{{Slow}} Замедляет врагов на 4 секунды#10 урона каждому врагу#При убийстве врага этим, появляется синий паук"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} {{ColorOrange}}Бросаемое{{CR}}#Летит в сторону стрельбы персонажа#Ломается и наносит 7 урона при столкновении с врагом#Оставляет окаменяющую лужу после броска", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "<MISSING>", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 203] = "Шанс, что подбираемые предметы станут двойными", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} При активации активируемого предмета, отнимает половину сердца за каждый недостающий заряд#Красные сердца в приоритете", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "После отпускания, они все полетят в сторону, в которую были выстрелены#↑ {{Tears}} +1 скорострельность", -- Anti-Gravity
	-- Full old Desc: "Слезы висят в воздухе, пока вы стреляете#После отпускания, они все полетят в сторону, в которую были выстрелены#↑ {{Tears}} +1 скорострельность"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 224] = "↑ {{Tears}} +0.5 скорострельности#↓ {{Range}} -20% от дальности", -- Cricket's Body
	-- Full old Desc: "При попадании слеза разделяется на 4#Разделённые слёзы наносят половину урона#↑ {{Tears}} +0.5 скорострельности#↓ {{Range}} -20% от дальности"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "<MISSING>", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{BlackHeart}} +2 черных сердца", -- Abaddon
	-- Full old Desc: "↑ {{Damage}} +1.5 урона#↑ {{Speed}} +0.2 скорости#{{Fear}} Пугающие слезы#Заменяет все {{Heart}} красные контейнеры сердец на {{BlackHeart}} черные сердца#{{BlackHeart}} +2 черных сердца"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "↑ {{Speed}} +0.3 скорости", -- Stop Watch
	-- Full old Desc: "{{Slow}} Постоянное замедление врагов#↑ {{Speed}} +0.3 скорости"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Синие пауки и мухи наносят удвоенный урон#Спутники пауки и мухи становятся сильнее", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Bomb}} +5 бомб", -- Hot Bombs
	-- Full old Desc: "{{Burning}} Горящие бомбы#Вы больше не получаете урон от огня#Бомбы наносят контактный урон#{{Bomb}} +5 бомб"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ Урон уменьшается со временем нахождения слезы в воздухе#300% урона в самом начале", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +0.5 урона#↓ Урон уменьшается со временем нахождения слезы в воздухе#300% урона в самом начале"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Когда остается 1 сердце, наносит урон по комнате#Черные сердца и {{Collectible35}} эффекты Некрономикона наносят на 40 урона больше", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 чёрное сердце#Когда остается 1 сердце, наносит урон по комнате#Черные сердца и {{Collectible35}} эффекты Некрономикона наносят на 40 урона больше"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "Создаёт 1 случайную руну при подборе", -- Clear Rune
	-- Full old Desc: "{{Rune}} Копирует эффекты удерживаемой руны или камня души#Создаёт 1 случайную руну при подборе"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Персонаж становится неуязвимым#!!! За персонажем следует сердце. Если оно получит урон, то персонажу также будет нанесён урон#Спутник заряжается при стрельбе, после выпускает слёзы и отталкивает", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} Собирает красные сердца с пола#Каждые 1.5 сердца создаёт 1 черное сердце, пилюлю, карту, руну или паука", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Случайно призывает синих пауков в текущей комнате#{{Charm}} Очаровывает врагов при контакте", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Меняет все предметы на пьедесталах, характеристики, предметы и все артефакты#Копирует 1 случайный подбираемый предмет#Меняет текущую комнату, заменяя врагов#Заменяет камни в комнате", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Заменяет врагов в комнате#Пытается заменить на врагов с таким же количеством здоровья", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "<MISSING>", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "При использовании показывает скрытые камни и камни с ретро сокровищницами#{{Collectible76}} Даёт Рентгеновское зрение, если все эффекты активны", -- Book of Secrets
	-- Full old Desc: "При использовании показывает скрытые камни и камни с ретро сокровищницами#Даёт эффект до конца этажа: #{{Collectible54}} Карты сокровищ#{{Collectible21}} Компаса#{{Collectible246}} Синей карты#Даёт эффекты, которых у вас ещё нет#{{Collectible76}} Даёт Рентгеновское зрение, если все эффекты активны"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Бросает красный огонь#Пламя исчезнет, когда нанесет урон или заблокирует снаряды 5 раз или через 10 секунд", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "#Превращает врагов не-боссов в какашки#Сразу убивает монстров-какашек и боссов-какашек#Тушит костры и заполняет комнату водой#Превращает заполненные лавой ямы в пригодную для ходьбы землю", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} При использовании перед боем с боссом, предмет комнаты босса станет дьявольской сделкой#Взятие этих дьявольских сделок имеет те же последствия, что и взятие сделок в дьявольских комнатах", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 черное сердце#{{DevilRoom}} При использовании перед боем с боссом, предмет комнаты босса станет дьявольской сделкой#Взятие этих дьявольских сделок имеет те же последствия, что и взятие сделок в дьявольских комнатах"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "При использовании пукает и отталкивает врагов и снаряды#Враги при попадании в объекты получают 10 урона", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Наносит 2x урона игрока + 10 по всей комнате#{{Coin}} Стоимость: 1 монета", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Преобразует 1 синее/черное сердце в 1 красный контейнер сердец", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "В зависимости от этажа:#П1:2 {{SoulHeart}}#П2:2 {{Bomb}} и 2 {{Key}}#К1:1 артефакт {{BossRoom}}#K2:П1+К1#Г1:4 {{SoulHeart}}#Г2: 20 {{Coin}}#У1:2 артефакта {{BossRoom}}#У2: {{Collectible33}} Библия#???/Пустота: Ничего#Шеол: 1 артефакт {{DevilRoom}} + 1 {{BlackHeart}}#Собор: 1 артефакт {{AngelRoom}} + 1 {{EternalHeart}}#Тёмная комната: {{Collectible523}} Открывает Коробку для перевозки#Сундук: 1 {{Coin}}#Дом: {{Collectible580}} Красный ключ", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Касание врага наносит ему урон", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 скорости#Касание врага наносит ему урон#Двигаясь достаточно быстро, можно избежать урона"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Персонаж оставляет за собой след из слез#{{Damage}} След наносит 66% урона в секунду#След работает с эффектами слез", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Магнитные слезы#Притягивают предметы и врагов#Предметы притягиваются к месту падения слезы", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Стреляет слезами в случайное направление, копируя эффекты слез Айзека#{{Damage}} Наносит 75% вашего урона", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "<MISSING>", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "<MISSING>", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Заряд уменьшается, когда вы держите ПРОБЕЛ#Когда у вас не останется зарядов, вы получите неуязвимость#Лучи света будут бить врагов, которых вы касаетесь во время неуязвимости#!!! Не удерживайте слишком долго, это нанесёт вам урон!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 331] = "Самонаводящиеся слезы", -- Godhead
	-- Full old Desc: "↑ {{Speed}} +0.5 урона#↓ {{Tears}} -0.3 скорострельности#↓ {{Shotspeed}} -0.3 скорости слезы#Слёзы получают ауру, наносящую 2 урона в тик#Самонаводящиеся слезы"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Trinket41}} Создает брелок Спичку", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 Черное сердце#{{Bomb}} Создает 2-3 бомбы#{{Trinket41}} Создает брелок Спичку"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "Стреляет одной большой сквозной спектральной слезой ((Урон x 10) + 10)#!!! При получении урона:#↓ Вы дополнительно потеряете 2 полных сердца здоровья#↑ {{Range}} +1.5 дальности и персонаж оставляет кровавый след на полу#Дополнительный урон не может вас убить#Само-урон не считается", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Демонический спутник, копирует атаку персонажа#{{Damage}} Наносит 75% урона#{{Damage}} Наносит 100% урона при игре за Лилит", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Летит вдоль стен и препятствий в комнате#Ближайшие враги будут следовать за мухой", -- Lost Fly
	-- Full old Desc: "Летит вдоль стен и препятствий в комнате#Наносит 56 контактного урона в секунду#Ближайшие враги будут следовать за мухой"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 368] = "↑ {{Tears}} Стрельба в одном направлении постепенно увеличивает скорострельность до 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Luck}} 50% шанс при 9 удачи", -- Holy Light
	-- Full old Desc: "10% шанс выстрелить Святой Слезой, выпускающей Луч Света при попадании по врагу#{{Damage}} Луч наносит 3x вашего урона#{{Luck}} 50% шанс при 9 удачи"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "Иммунитет от взрывов#20% шанс отразить снаряд#Блокирует снаряды, падающие сверху", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Обновляет предметы в магазине после покупки#После пополнения увеличивается цена", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Вы теперь открываете закрытые двери и сундуки монетами, вместо ключей", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 монет#Вы теперь открываете закрытые двери и сундуки монетами, вместо ключей"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Можно бросить во врага, чтобы поймать его#После следующего броска пойманное существо появится как союзное#Ходьба по шару после захвата мгновенно перезарядит его", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} Заряжается и атакует врагов с разгона#Наносит 5-25 контактного урона при попадании в зависимости от скорости", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "<MISSING>", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} Создает случайную руну или камень души каждые 7-8 комнат", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "Враги могут попасть своими слезами друг по другу, после чего они начнут сражаться между собой", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15% шанс выстрелить отравляющей слезой#{{Luck}} Не зависит от удачи#{{Poison}} Отравляет врагов при касании#{{BlackHeart}} Отравленные касанием враги после смерти с шансом 20% оставляют черное сердце", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ {{Range}} +3 дальности#Спутники стреляют по направлению маркера", -- Marked
	-- Full old Desc: "Вы стреляете слезами в направлении маркера, которым вы управляете#↑ {{Tears}} +0.7 скорострельности#↑ {{Range}} +3 дальности#Спутники стреляют по направлению маркера"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "{{Chargeable}} Вы атакуете заряжающимися лазерными кольцами#Урон зависит от длительности зарядки#100% при полной зарядке", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} После непрерывной стрельбы в течение 3 секунд, на голове появится красный крест. После прекращения стрельбы появится черное кольцо, наносящее большой урон", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "Слезы со случайным шансом могут прилипнуть к врагу, после чего они начнут увеличиваться в размерах, пока не взорвутся#Липкие слезы периодически наносят обычный урон", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "После блокирования может выпустить газы, которые могут отравить,очаровать или отбросить врагов#Газы наносят 5-6 урона", -- Farting Baby
	-- Full old Desc: "Блокирует снаряды#После блокирования может выпустить газы, которые могут отравить,очаровать или отбросить врагов#Газы наносят 5-6 урона"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} {{ColorOrange}}Бросаемое{{CR}} #Заменяет врагов и предметы на полу при контакте с ними", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ Повышает одну из характеристик, в зависимости от цвета аура#При получении урона, случайная аура появится в следующей комнате#{{ColorRed}}Красная{{CR}} = +4.0 к урону#{{ColorBlue}}Синяя{{CR}} = +2 к скорострельности#{{ColorYellow}}Желтая{{CR}} = +0.5 к скорости#{{ColorOrange}}Оранжевая{{CR}} = +3 дальность стрельбы, +1 высота слезы", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "Шанс создать темное кольцо бримстоуна при убийства врага", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "Создает 1-3 случайных монет, если после зачистки комнаты вы не получили награду#Увеличивает максимальное количество монет до 999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Летает по комнате, имеет ауру, которая наносит врагам 7.5-10 урона в секунду#↑ +50% к урону при нахождении внутри ауры", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "Накладывает очарование на ближайших врагов при активации", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "<MISSING>", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 433] = "<MISSING>", -- My Shadow
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Восстанавливает ранее убитых врагов в комнате#Позволяет повторно получить награду за зачистку комнаты", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Каждый 15 выстрел вы будете выпускать большую россыпь слез", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "После получения урона по красным сердцам начинается управляемое кровоизлияние#Пока активно, каждые 20 секунд будет наноситься половина сердца урона#Останавливается при вылечивании красного здоровья", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "Каждые 20 выстрелов, выстреливает слезу-монетку, наносящую х1.5 урона + 10#Задетый враг бросит монетку и временно превратится в золото#Золотой враг оставит 1-3 монетки при убийстве#!!! Слеза-монетка стоит 1 монетку", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "Усиливает эффект некоторых используемых карт", -- Tarot Cloth
	-- Full old Desc: "Дает случайную карту или руну#Усиливает эффект некоторых используемых карт"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Разделяются на 1-3 осколков при столкновении", -- Compound Fracture
	-- Full old Desc: "Костяные слёзы#Разделяются на 1-3 осколков при столкновении#↑ +0.38 к дальности#↑ +1.0 к высоте слезы"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "С монстров-чемпионов и при зачистке комнат более чаще выпадают предметы", -- Glyph of Balance
	-- Full old Desc: "+2 синих сердца#С монстров-чемпионов и при зачистке комнат более чаще выпадают предметы#Приоритет на выпадение предметов, которых не хватает игроку"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Все спутники следуют за ним и автоматически стреляют во врагов#Останавливается во время стрельбы#Телепортируется обратно к вам, когда вы перестаете стрелять", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "При использовании превращается в стеклянную пушку", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Дублирует 1 случайный подбираемый предмет в комнате#Дублированный предмет может быть вариантом этого предмета, а не точной копией", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "!!! При использовании, поглощает все артефакты на пьедесталах в конмате#Активируемый артефакт: Его эффект будет активироваться при каждом следующем использовании Пустоты#↑ Пассивный артефакт: Небольшие увелечения двух случайных характеристик", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Нажмите кнопку выброса предмета (Ctrl), чтобы перебирать кубики#При использовании применяется эффект этого кубика", -- D Infinity
	-- Full old Desc: "Нажмите кнопку выброса предмета (Ctrl), чтобы перебирать кубики#При использовании применяется эффект этого кубика#Время заряда меняется в зависиости от того, какой кубик был использован"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "За каждый пустой контейнер красных сердец:#↑ Увеличивает урон по формуле: ((2 * Отсутствующие половины сердец) ^ 1.6) * 0.1", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "При попадании слезой появляется 1 искра электричества#Искры наносят половину урона персонажа#Искры прыгают между врагами", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "Огонь исчезает после 2 секунд", -- Ghost Pepper
	-- Full old Desc: "8% шанс выстрелить синим огнём, который блокирует снаряды врагов и наносит контактный урон#{{Luck}} 50% шанс при 10 удачи#Огонь исчезает после 2 секунд"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "Сбивает с толку всех врагов и камуфлирует персонажа при заходе в комнату до тех пор, пока вы не начнете стрелять#↑ {{Speed}} +0.5 скорости при комуфляже#При сбросе комуфляжа, наносит урон вокруг персонажа и даёт очень короткое увеличение скорострельности и урона", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "За каждые 25 монет дает ↑ +1 красный контейнер#{{Player14}} / {{Player33}}Хранитель может получить дополнительные контейнеры-монеты#{{Collectible416}} За каждые 100 монет дает ↑ +1 к здоровью, если у вас больше 99 монет", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "Столкновение персонажа с врагами нанесет им 3.5 урона", -- Little Horn
	-- Full old Desc: "Шанс выстрелить слезой, которая призывают руку Большого рога#Рука убивает врагов мгновенно и наносит урон боссам#Столкновение персонажа с врагами нанесет им 3.5 урона"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "При использовании призывает союзную муху-турель, атакующую врагов", -- Brown Nugget
	-- Full old Desc: "При использовании призывает союзную муху-турель, атакующую врагов#Каждый выстрел наносит по 3.5 урона"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "При попадании по врагу со спины, наносится двойной урон и накладывается кровотечение, которое заставляет врагов оставлять кровавй след и получать урон при движении", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} Наносит ваш урон + 10% от макс. здоровья врага#Действует на всех врагов в комнате#{{HalfHeart}} Шанс получить пололвину красного сердца при нанесении урона", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "Орбитальный спутник, при контакте накладывает кровотечение, которое заставляет врагов оставлять кровавй след и получать урон при движении#Наносит 20% вашего урона при контакте в тик", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Орбитальный спутник, стреляющий каждую 1/3 секунды, когда рядом враг", -- Bloodshot Eye
	-- Full old Desc: "Орбитальный спутник, стреляющий каждую 1/3 секунды, когда рядом враг#Наносит 3.5 урона слезой#Наносит 30 контактного урона в секунду"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Вызывает 'лаги' у врагов и их снарядов случайным образом#Снаряды при этом через некоторое время исчезнут#С шансом 25% подбираемые предметы могут залагать и удвоиться", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Позволяет быстро ставить бомбы на пол#Бомбы не отталкивают друг друга", -- Fast Bombs
	-- Full old Desc: "+7 бомб#Позволяет быстро ставить бомбы на пол#Бомбы не отталкивают друг друга"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "<MISSING>", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "При использовании подбирает до 10 предметов и артефактов в комнате#Повторное использование создает эти предметы на полу#Позволяет перемещать предметы между комнатами", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Слезы соединены между собой электрическим разрядом#Электричество наносит 1/3 от урона", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "При использовании создает на полу люк на следующий этаж#{{LadderRoom}} Создаёт Ретро сокровищницу, если использовано на клетке пола с декорацией (трава, маленькие камешки, бумажки, и т.д.)", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "Дает шанс выстрелить спорой, которая прилипает к врагу#Споры взрываются через 2,5 секунды, нанося урон, отравляя ближайших врагов и высвобождая больше спор", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "Накладывает страх на врагов в небольшом радиусе вокруг персонажа", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "Забирает 5 монет и даёт 1.2 к урону на текущую комнату#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "+5 монет#Забирает 5 монет и даёт 1.2 к урону на текущую комнату"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 557] = "Дает персонажу шанс получить предсказание, синее сердце, карту таро или брелок", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Шанс выстрелить дополнительными слезами в случайных направлениях", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Поражает врагов рядом с персонажем электроразрядами#Электричество наносит 75% от вашего урона", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "При получении урона персонаж выпускает 10 слез вокруг#↑ +1.2 к скорострельности за первое повреждение#↑ +0.4 к скорострельности за последующие#Скорострельность может стать больше максимума", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 562] = "Закрепляет самое высокое значение характеристик персонажа#Фактически они продолжают изменяться как раньше", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Бомбы взрываются со случайным эффектом бомб", -- Nancy Bombs
	-- Full old Desc: "+5 бомб#Бомбы взрываются со случайным эффектом бомб"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Спутник, преследующий врагов#Убив 15 врагов, он становится сильнее и будет пытаться также атаковать персонажа#Убив ещё 25 моснтров, он станет ещё сильнее#Его можно убить и вернуть в нормальное состояние", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "+1/2 синего сердца при переходе на новый этаж#Отображает предстоящий артефакт Комнаты Сокровищ и Босса при переходе на другой этаж", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ +0.4 к скорострельности за каждую зачищенную комнату без получения урона#Накапливается до 5 раз#При получении урона бонус сбрасывается", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Двойное нажатие на выстрел, создает щит#Щит существует 1 секунду, отталкивает врагов и отражает вражеские снаряды и лазеры", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "В начале каждого этажа забирает красные сердца#Повышает характеристики на данный этаж:#↑ Урон + 0.15 * Потерянные сердца^2#↑ Скорость + 0.05*Потерянные сердца", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Каждая слеза будет иметь случайный эффект и цвет", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "↑ +2 синих сердца", -- Orphan Socks
	-- Full old Desc: "Позволяет ходить по шипам и лужам, не получая урон#↑ +0.3 к скорости#↑ +2 синих сердца"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "↓ -0.16 к скорости слезы", -- Eye of the Occult
	-- Full old Desc: "Контролируемые слезы#↑ +1 к урону#↑ +2 к дальности#↓ -0.16 к скорости слезы"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "Шанс дополнительно выстрелить орбитальными, спектральными слезами", -- Immaculate Heart
	-- Full old Desc: "+1 к здоровью#↑ +20% к урону#Полное лечение#Шанс дополнительно выстрелить орбитальными, спектральными слезами"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Вокруг персонажа появляется аура, которая наносит урон врагам#Чем ближе к персонажу, тем больше урона", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "Спутник, в голове персонажа, стреляющий 4 замедляющими слезами#После получения урона, может покинуть голову", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Уничтожение кучек кала призывает 1-4 дружелюбных какашек-дипов#Разные типы кучек будут вызывать разных помощников", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Порождает кинжал над вашей головой, который удваивает все артефакты на пьедесталах#После получения урона может упасть в любой момент и мгновенно убить персонажа", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Создает большую желтую лужу на полу", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "Вместо слез персонаж размахивает мечом#Наносит 3x + 3.5 урона#Удерживание кнопки атаки заряжает круговую атаку#При полностью заполненных контейнерах может выстрелить слезу", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Создает новую комнату, примыкающую к стене, обозначенную контуром двери#Комната может быть особенной#Комната за пределами карты этажа 13х13 телепортирует вас в комнату Я-ОШИБКА", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Вокруг персонажа летает муха", -- Psy Fly
	-- Full old Desc: "Вокруг персонажа летает муха#Отлетает для перехвата вражеских слёз, и превращает их в самонаводящиеся слёзы#Наносит контактный урон"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Искажает экран#Эффект может складываться", -- Wavy Cap
	-- Full old Desc: "↑ +0.75 к скорострельности#↓ -0.03 к скорости#Искажает экран#Эффект может складываться"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Если персонаж стреляет, то по направлению стрельбы будет запущена ракета", -- Rocket in a Jar
	-- Full old Desc: "+5 бомб#Если персонаж стреляет, то по направлению стрельбы будет запущена ракета#Иначе поставится обычная бомба"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Книгу можно совместить и использовать с другим активируемым артефактом, создавая уникальный огонёк со специальными эффекты#Превращает первую сделку в комнату Ангела, увеличивает шанс комнаты Ангела, и позволяет встретить комнату Ангела после сделки с Дьяволом", -- Book of Virtues
	-- Full old Desc: "Создает орбитальный огонёк, который стреляет спектральными слезами, но может быть уничтожен#Книгу можно совместить и использовать с другим активируемым артефактом, создавая уникальный огонёк со специальными эффекты#Превращает первую сделку в комнату Ангела, увеличивает шанс комнаты Ангела, и позволяет встретить комнату Ангела после сделки с Дьяволом"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "Создает 3 синих сердца и 2 Ангельских артефакта#Если была совершена сделка с Дьяволом, то 2 синих сердца и 1 Ангельский артефакт#Заряжается подбирая синие и чёрные сердца", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Создает лестницу, ведущую в комнату Ангела в начале каждого этажа#В ней продаются подбираемые предметы и ангельские артефакты#Исчезает при переходе в другие комнаты", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 589] = "Добавляет на каждый этаж дополнительные {{SecretRoom}}Секретную и {{SuperSecretRoom}}Супер секретную комнаты#Секретные комнаты содержат луч света, который увеличит скорострельность до конца этажа и даст половину синего сердца#Раскрывает одну секретную комнату на карте на каждом этаже", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Все обычные двери всегда открыты", -- Mercurius
	-- Full old Desc: "↑ +0.4 к скорости#Все обычные двери всегда открыты"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "Враги около персонажа получают эффект очарования", -- Venus
	-- Full old Desc: "↑ +1 к здоровью#Лечит 1 красное сердце#Враги около персонажа получают эффект очарования"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Заменяет слезы камнями#Они наносят 0.5x-2.0x урона", -- Terra
	-- Full old Desc: "↑ +1.0 к урону#Заменяет слезы камнями#Они наносят 0.5x-2.0x урона#Могут ломать объекты#Повышает отталкивание"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "При двойном нажатии кнопки передвижения персонаж совершит быстрый рывок, становясь неуязвимым и нанося 4x урона#3 секунды перезарядка", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 595] = "Вас окружает орбита#Войдя в комнату, она наполняется 7 слёзами персонажа#Шанс поймать вражеские снаряды в орбиту", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "Ледяные слезы, которые замедляют монстров и замораживают их при убийстве#Можно пнуть замерзших врагов, при этом они разлетятся на 10 слёз-сосулек", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "Когда персонаж не стреляет, во рту накапливаются слёзы#При стрельбе быстро выстреливаются все накопленные слёзы", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Значительно уменьшает персонажа, позволяя ему протискиваться между объектами#Выстрелы могут пролететь над персонажем", -- Pluto
	-- Full old Desc: "↑ +0.7 к скорострельности#Значительно уменьшает персонажа, позволяя ему протискиваться между объектами#Выстрелы могут пролететь над персонажем"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "На каждом этаже появляется дополнительная {{CursedRoom}} Проклятая комната", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Получение урона красными сердцами не так сильно снижает шанс сделки", -- Act of Contrition
	-- Full old Desc: "↑ +0.7 к скорострельности#+1 вечное сердце#Позволяет Ангельским комнатам появляться даже в том случае, если ранее была заключена сделка с Дьяволом#Получение урона красными сердцами не так сильно снижает шанс сделки"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "Добавляет люк в каждый магазин, который ведет во второй магазин с предметами по завышенной цене", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "Полностью заряжает активируемый предмет", -- Battery Pack
	-- Full old Desc: "Создает 2-4 батарейки#Полностью заряжает активируемый предмет"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Позволяет подобрать и кинуть объекты#Позволяет переносить их между комнатами", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 607] = "Спутник, который стреляет хаотическими всплесками слез во всех направлениях", -- Boiled Baby
	-- Full old Desc: "Спутник, который стреляет хаотическими всплесками слез во всех направлениях#Наносит 3.5 или 5.3 урона за каждый выстрел"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Спутник, который стреляет сосульками#Замораживает монстров после их убийства", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "Изменяет все артефакты в комнате#30% шанса, что артефакт исчезнет#Не зависит от удачи", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Спутник, который после получения урона спрыгивает с головы персонажа и приземляется на ближайшего врага#Наносит 45 урона и выпускает волну камней#Преследует врагов после этого", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Персонаж кричит, нанося урон и отталкивая ближайших врагов#Чем больше зарядов, тем сильнее эффект#Также заряжается, получением урона", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Спутник, который держится позади от направления стрельбы#Умирает от одного попадания#Если он присутствует при переходе на следующий этаж, то наградит сердцами или артефактами", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "Бомбы оставляют красную лужу#Если у игрока нет бомб, то можно поставить ценой в половину сердца", -- Blood Bombs
	-- Full old Desc: "↑ +1 к здоровью#Лечит 5 красных сердец#Бомбы оставляют красную лужу#Если у игрока нет бомб, то можно поставить ценой в половину сердца"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Пукающий спутник#Пукает около врагов, с которыми столкнётся, отбрасывая их назад", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 619] = "Имеет разный эффект для каждого персонажа", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "Бонус урона уменьшается до нуля 3 минуты#Каждое убийство даёт небольшой бонус к урону, который продлевает действие", -- Red Stew
	-- Full old Desc: "Полное восстановление здоровья#↑ +21.6 к урону#Бонус урона уменьшается до нуля 3 минуты#Каждое убийство даёт небольшой бонус к урону, который продлевает действие"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Забирает все предметы персонажа#Телепортирует вас в уникальную спальню с артефактами, сундуками и люком#В ней будет выбор из трёх артефактов за каждый, который забрали у персонажа#Тройки артефактов будут из пула забранного артефакта", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "При активации тратит ключ и бросает его, нанося урон врагам, ломая объекты и открывая двери", -- Sharp Key
	-- Full old Desc: "+5 ключей#При активации тратит ключ и бросает его, нанося урон врагам, ломая объекты и открывая двери"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}", -- Mega Mush
	-- Full old Desc: "Гигантифицирует персонажа на 30 секунд#Повышает урон и дальность#Дает неуязвимость и способность сокрушать врагов и препятствия#Эффект сохраняется между комнатами"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 627] = "Наносит урон врагам", -- Knife Piece 2
	-- Full old Desc: "Вместе с {{Collectible626}} Первой частью ножа, создает Нож-спутник#Наносит урон врагам#Может открыть дверь плоти"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Перенесет вас на этаж, содержащий все артефакты в игре#После подбора одного артефакта персонаж возвращается", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Муха-робот, которая летает вокруг вас, наносит урон при прикосновении и стреляет защитными слезами в ближайшую к персонажу вражескую слезу", -- Bot Fly
	-- Full old Desc: "Муха-робот, которая летает вокруг вас, наносит урон при прикосновении и стреляет защитными слезами в ближайшую к персонажу вражескую слезу"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Разделяет врагов в комнате на две меньшие версии с ~40% здоровья каждая", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Иммунитет к эффектам горения, ошеломления, страха, отравления и облаков ядовитого газа", -- Evil Charm
	-- Full old Desc: "↑ +2 к удаче#Иммунитет к эффектам горения, ошеломления, страха, отравления и облаков ядовитого газа"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Находясь в комнате с врагами, создает трещины на земле#Хождение по этим трещинам вызывает взрывающихся призраков", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Спутник, который движется в направлении выстрелов персонажа#При использовании, персонаж меняется местами со спутником и получает кратковременную неуязвимость#Телепортация на объекты и врагов может повредить или уничтожить их", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Создаёт новый забег с сохранением собранных артефактов и предметов, и перемещает вас на первый этаж#Также сохраняет время", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 638] = "Бросает ластик, который стирает врага#Предотвращает появление стертого врага на протяжении всего забега#Можно использовать 1 раз на каждом этаже", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Активация открывает и закрывает урну#Испускает поток пламени#Получает заряды каждый раз, когда враг умирает", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Создает цепочку слез позади вас во время боя#Слезы наносят 3.5 урона", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Забирает 1 контейнер здоровья или 2 синих сердца для создания артефакта#Создает сломанный контейнер сердца, который никогда не может быть заполнен#!!! Одиночное использование для персонажа Потерянный#!!! Если после использования персонаж не несёт его, то есть шанс, что другие артефакты будут заменены на него", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 644] = "Повышает самую низкую характеристику#Даёт 3 монеты, 1 бомбу, или 1 ключ в зависимости от того, чего у вас меньше всего", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Орбитальный спутник, блокирует выстрелы#Разбивается на меньшие версии самого себя после получения 3 единиц урона#Меньшие версии разбиваются на синих пауков#Появляется через 5 секунд после того, как полностью исчезает", -- Tinytoma
	-- Full old Desc: "Орбитальный спутник, блокирует выстрелы#Наносит урон при прикосновении#Разбивается на меньшие версии самого себя после получения 3 единиц урона#Меньшие версии разбиваются на синих пауков#Появляется через 5 секунд после того, как полностью исчезает"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "Бомбы выпускают 4 широких кровавых лазера в 4 стороны", -- Brimstone Bombs
	-- Full old Desc: "+5 Бомб#Бомбы выпускают 4 широких кровавых лазера в 4 стороны"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Активные предметы больше не заряжаются при очистке комнат#Заряжаются при нанесении урона врагам", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Маленький спутник", -- Fruity Plum
	-- Full old Desc: "Маленький спутник#Передвигается по диагонали по комнате, стреляя слезами позади себя"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "Призывает спутника Сливовую малышку в текущую комнату на 10 секунд", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Спутник, который медленно движется к комнате {{BossRoom}} Босса#Аура вокруг дает +20% + 1 к урону, скорострельность, самонаведение и шанс защиты от урона#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "Спутник, который медленно движется к комнате {{BossRoom}} Босса#Аура вокруг дает +20% + 1 к урону, скорострельность, самонаведение и шанс защиты от урона"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Спутник, который скользит вокруг#Он замедляет и наносит урон при прикосновении, замораживая монстров, которых убивает", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Враги не-призраки оставляют после смерти маленьких красных призраков#При использовании вызывает призраков", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "↑ Пилюли, которые дают плохие характеристики повышают урон", -- False PHD
	-- Full old Desc: "Идентифицирует все пилюли# +1 черное сердце# +1 пилюля#Превращает хорошие пилюли в плохие#↑ Пилюли, которые дают плохие характеристики повышают урон#Другие пилюли создают черные сердца при употреблении"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "Добавляет орбитальный волчок, который блокирует вражеские выстрелы и наносит контактный урон#{VAR:ONUSEEFFECT}", -- Spin to Win
	-- Full old Desc: "Добавляет орбитальный волчок, который блокирует вражеские выстрелы и наносит контактный урон#При использовании, дает↑ +0.5 к скорости и сильно увеличивает скорость вращения всех орбитальных спутников"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "<Item not obtainable>", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "После убийства врага из него вылетают слёзы, летящие в случайном направлении", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Создает микро-персонажей при получении урона#Они преследуют и стреляют в ближайших врагов", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Создает два портала в начале каждого этажа#Один, начиная с 4 главы#Порталы исчезают при выходе из комнаты#{{ColorRed}}Красный:{{CR}} Комната босс#{{ColorYellow}}Жёлтый:{{CR}} Комната сокровищ#{{ColorBlue}}Синий:{{CR}} Секретная комната", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Убийство врага призывает стационарного спутника на его месте#Максимум может создать 5 спутников", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "Каждую 6 секунду делает вас неуязвимым#Мигает перед эффектом", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Предмет на пьедестале периодически меняются между собой и артефактом-едой#Сбор еды дает временное усиление урона +3.6, 2 небольших постоянных характеристики и -0.03 скорости", -- Binge Eater
	-- Full old Desc: "+1 к здоровью#Полное лечение#Предмет на пьедестале периодически меняются между собой и артефактом-едой#Сбор еды дает временное усиление урона +3.6, 2 небольших постоянных характеристики и -0.03 скорости#Артефакты-еда лечат 3 красных сердца"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Показывает содержимое костров, мешочков, сундуков и лавочников до их открытия", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 668] = "После подбора начинается восхождение", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Если после зачистки комнаты дается награда, то на выбор будет две разные награды#Поднятие одного приводит к исчезновению другого", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "За каждую исцелённую половину красного сердца с помощью подбираемых сердец навсегда увеличивает случайную характеристику", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "Сделки с Дьяволом теперь требуют монеты#Предметы в магазине теперь требуют сердца#Расходные материалы в магазинах бесплатны, но окружены шипами", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "+1 синее сердце и +1.0 к урону, если в сделке с Дьяволом не будет взято вообще ничего#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "+1 синее сердце и +1.0 к урону, если в сделке с Дьяволом не будет взято вообще ничего"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "После смерти призрак персонажа прикован к его мертвому телу, и он может продолжать сражаться с половиной сердца#Возвращение к жизни через 10 секунд#Заряжается при поднятии синего сердца", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "При получении урона открывает все двери и проходы, уничтожает скрытые камни и камни с ретро сокровищницами в комнате#Раскрывается случайная комната#Может открыть сюжетные двери#Может раскрыть {{UltraSecretRoom}} Ультра секретную комнату", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "Если у персонажа есть одно или менее красных сердец, то в начале следующего этажа даётся пустой контейнер здоровья#Костяные сердца не в счет", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "Когда вы получаете урон, время замирает на 3 секунды#Персонаж становится призраком и покидает тело#В форме призрака персонаж получает полет, спектральные слезы, а также блокирует следующий попавший выстрел", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "Атака с короткой зарядкой, которая создаёт самонаводящегося зародыша", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "Спутник, который после зарядки создаёт вокруг себя чёрное кольцо {{Collectible399}} Пасти бездны", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "После непрерывной стрельбы в течение 2,5 секунд создает небольшой широкий поток#Стреляет против направления движения", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "Спутник, который летит по направлению стрельбы, наносит урон врагам и собирает подбираемые предметы на своём пути#Создаёт синюю муху за каждый#За каждые 4 предмета создаёт портал в неисследованную комнату", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Щупальце появляется из земли#Может удерживать врага, замедлять и наносить урон", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Убитые враги оставляют после себя 1-2 осколка летающих костей#Они могут 2 раза могут защитить от выстрелов или нанести урон врагу", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Шанс создать призрака, при убийстве врага#Призрак преследует врага и наносит урон при прикосновении", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "При использовании создаёт огонёк, подобный от {{Collectible584}} Книги добродетелей#Сначала создаёт только один огонёк, но после каждого использования создаёт на один больше#Максимум до 12", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "За каждую поднятую половину синего или чёрного сердца навсегда увеличивается случайная характеристика", -- Soul Locket
	-- Full old Desc: "За каждую поднятую половину синего или чёрного сердца навсегда увеличивается случайная характеристика#Создает синее сердце"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Создает случайного дружелюбного монстра, который имитирует движения и атаки персонажа", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "Перерождение в текущей комнате с половиной сердца, очень маленьким размером и +0.2 к скорости", -- Inner Child
	-- Full old Desc: "+1 Дополнительная жизнь#Перерождение в текущей комнате с половиной сердца, очень маленьким размером и +0.2 к скорости"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Пьедесталы предметов быстро переключаются между 5 случайными предметами", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Заставляет врагов отскакивать от персонажа при прикосновении#Отскакивание их в препятствия наносит им урон#50% шанс отразить выстрелы#50% шанс игнорировать контактный урон", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Предотвращает появление артефактов с низким качеством (0-1)#Значительно повышается качество артефактов, которые будут появляться", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Создает специальные шипы в Дьявольской комнате#Получение урона от шипов может дать награду:#35%: ничего#33%: +0.5 к урону#15%: 6 монет#10%: 2 черных сердца#5%: случайный дьвольский артефакт#2%: Трансформация Левиафан", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Создает новую муху, после зачистки комнаты", -- The Swarm
	-- Full old Desc: "Создает 9 орбитальных мух которые превращаются в Синих мух после того как они блокируют выстрел#Создает новую муху, после зачистки комнаты"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "Каждый смертельный удар добавит еще 2 разбитых сердца#Умираете, при достижении 12 сломанных сердец", -- Heartbreak
	-- Full old Desc: "Дает 3 сломанных сердца#↑ +0.25 к урону за каждое сломанное сердце#Каждый смертельный удар добавит еще 2 разбитых сердца#Умираете, при достижении 12 сломанных сердец"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "При получении урона добавляет скорость и скорострельность до конца этажа", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Вокруг персонажа появляется аура, при нахождении врага в которой над ним появляется столб света#Аура увеличивается, от количества полученного урона на этаже", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Спутник, который становится клоном босса при входе в комнату босса#Победа над ним создает дополнительный артефакт#Клон медленнее и имеет 75% от исходного здоровья босса", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Два спутника, стоящие по бокам#Слёзы равны вашим, но только с 37.5% вашего урона", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "Персонаж получает ярость, после каждой зачищенной комнаты#Через 4 комнаты он стреляет большим потоком Серы при входе в следующую комнату", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Когда персонаж использует карту, пилюлю или руну, он также использует копии 3 последних карт/пилюль/рун, которые использовались с момента получения Эхо-камеры", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Создает старый сундук в начале каждого этажа#Может содержать:#1-3 синих сердца#3 брелока#Артефакт мамы или папы#Артефакт ангела", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "После получения урона создает спутника-огонька до конца этажа#Максимум 6 спутников#Они стреляют огненными слезами, но не блокируют выстрелы", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "При использовании происходит переключение между текущим персонажем и Исавом-младшим, который имеет 3 черных сердца, +2 к урону и полет#Персонажи имеют независимые предметы и здоровье#!!! При его смерти, забег заканчивается", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#При касании врагам наносится 2х вашего урона + 3.5 за каждого затронутого врага#Когда эффект заканчивается, каждому врагу наносится этот урон и уничтожаются выстрелы#Если персонаж это Порченый Иуда, то он получает +1 к урону за всех поражённых", -- Dark Arts
	-- Full old Desc: "Дает ↑ +1.0 скорости и способность проходить сквозь врагов и выстрелы в течение 1 секунды#При касании врагам наносится 2х вашего урона + 3.5 за каждого затронутого врага#Когда эффект заканчивается, каждому врагу наносится этот урон и уничтожаются выстрелы#Если персонаж это Порченый Иуда, то он получает +1 к урону за всех поражённых"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Уничтожает все артефакты в комнате и создает атакующую муху#Эффекты мухи зависят от предметов", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Персонаж стреляет слезами из одного глаза", -- Stapler
	-- Full old Desc: "↑ +1.0 к урону#Персонаж стреляет слезами из одного глаза"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Персонаж совершает рывок#Если на его пути окажется монстр или босс, он хватает его и бросает, нанося 50 урона по площади#Броском можно управлять", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Имеет 8 слотов для подбираемых предметов#Когда все 8 заполнены, появляется возможность создать из них артефакт на пьедестале#Редкость артефакта зависит от редкости предметов", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "У артефакта, сгенерированном при входе в комнату, позади появляется второй артефакт с помехами#При активировании артефакты меняются местами#Если остался только артефакт с помехами, то при выходе из комнаты он исчезнет, но при активации он станет обычным", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "При использовании создает разрушаемый огонёк со эффектом пассивного артефакта#Этот эффект применяется к персонажу#Артефакт создаётся из пула данной комнаты c шансом 25%, иначе из случайного пула", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "При использовании превращает половину сердца в разрушаемых спутников#Их нельзя превратить обратно в сердца#Виды сердец влияют на создаваемых спутников", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Возвращает тело Забытого с любого расстояния", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Сохраняет внутри одну какашечную бомбу, которую можно использовать позже", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "Создает 3 монеты и 1 ключ#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "Дает дальность, скорость или урон при покупке вещей в магазинах#Создает 3 монеты и 1 ключ"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "В комнате с врагами камни и вазы могут создать синих пауков#При уничтожении они создают 2 синих паука", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "На полу появляется случайный расходник или артефакт на продажу", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Создает определенные вещи в зависимости от того, сколько зарядов у него есть#Если полностью заряжен, то случайно активирует один из 12 уникальных эффектов#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Все предметы становятся глючными#Они имеют 3 абсолютно случайных эффекта", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Приковывает ближайшего врага цепями на 5 секунд, не давая ему двигаться", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Изменяет все артефакты в комнате на другие, вычитая единицу из ID каждого", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "При получении урона от врага, на пол падает половина или полное красное сердце#Сердца пропадают через 1.5 секунды", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "После нанесения достаточного урона персонаж начинает краснеть#После прекращения стрельбы персонаж получает одну из уникальных какашек Порченого ???", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Позволяет двойным нажатием кнопки стрельбы чихнуть на врага, оттолкнув его#Наносит 150% урона врагам перед вами#Перезарядка 1 секунда", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Бомбы создают призраков, которые наносят урон при прикосновении и взрываются через 10 секунд", -- Ghost Bombs
	-- Full old Desc: "+5 бомб#Бомбы создают призраков, которые наносят урон при прикосновении и взрываются через 10 секунд"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Создает демона-спутника, который привязан к персонажу#Повторяет эффекты слез персонажа", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "После активации, позволяет швырнуть вашу голову, которая после приземления работает как турель, стреляя, пока вы её не подберёте или используете снова", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "Создаёт руну или камень души на полу", -- Mom's Ring
	-- Full old Desc: "↑ +1 к урону#Создаёт руну или камень души на полу"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "Шанс 33%, что на месте уничтоженного камня появится монета", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "Каждая монета заставляет вас пукать#Пуки отталкивают и отравляют врагов", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% шанс получения эффекта случайного гриба каждую комнату", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "Высокий шанс создать спутника Близнеца при получении урона", -- Umbilical Cord
	-- Full old Desc: "Когда у персонажа половина или нет красных сердец, появляется спутник Маленький Стивен#Высокий шанс создать спутника Близнеца при получении урона"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "При получении урона шанс 5% нанести 80 урона всем врагам в комнате#Чёрные сердца и {{Collectible35}} эффекты некрономикона наносят на 40 урона больше", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "25% шанс получить половину сердца при подборе монеты", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "25% шанс получить бомбу при подборе монеты", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "25% шанс получить ключ при подборе монеты", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Маскирует игрока случайным образом#Приводит врагов в замешательство#Позволяет открыть Странную дверь", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ Увеличение характеристик ваших предметов на 20% эффективнее", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "<MISSING>", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = " {{Shop}} Магазины появятся в Утробе и Трупе", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = " {{TreasureRoom}} Комнаты Сокровищ появятся в Утробе и Трупе", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "При спуске на следующий этаж:#Красные сердца исцеляются до половины от максимума#Если красных сердец больше или равно половине, то лечит половину красного сердца", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "Шанс получить половину синего сердца при подборе монеты", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "Шанс получить случайный эффект шприца для текущей комнаты", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Бомбы, заложенные персонажем, взрываются быстрее", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Увеличивает размер пуков", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Любые запертые двери, блоки с замком и золотые сундуки могут быть открыты взрывами#Не может открыть дверь к Мега Сатане и Дверь плоти", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "При входе на новый этаж в стартовой комнате появляется до 4-х оставленных вещей на предыдущем этаже", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "При использовании активируемого предмета он изменится на другой случайный.", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "Эффекты слёз, зависящие от удачи, появляются чаще", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Поднятие красных сердец может превратить их в синих пауков#Работает даже при полном здоровье#Эффект может поглотить сердца, необходимые для исцеления", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Увеличивает частоту выстрелов спутников", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "В начале этажа дает вам 4 синих огоньков из {{Collectible584}} Книги Добродетелей", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Слезы, пролетающие рядом с врагом, поворачиваются на 90 градусов, чтобы нацелиться на него", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "Уничтожается при получении урона", -- Perfection
	-- Full old Desc: "↑ +10 к удаче#Уничтожается при получении урона"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = " {{TreasureRoom}} Комнаты Сокровищ теперь содержат сделку с Дьяволом", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "16% шанс добавить 1 заряд активируемого артефакта при подборе монеты", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Заставляет спутников кружить вокруг персонажа", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Использует активный предмет персонажа перед потенциальным получением урона", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Войдя в комнату, где требуется ключ, вы бесплатно попадаете в комнату, напоминающую Синюю Матку#Она действует как промежуточное звено между двумя комнатами", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Спиливает шипы на всех возможных поверхностях#Также влияет на двери {{CursedRoom}} Проклятых комнат, шипастых сундуков и другие шипастые объекты", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "Удерживает шанс 15% к появленю следующих планетариев после первого#Планетарий может появиться в Утробе и Трупе", -- Telescope Lens
	-- Full old Desc: "+9% к шансу появления {{Planetarium}} Планетария#Удерживает шанс 15% к появленю следующих планетариев после первого#Планетарий может появиться в Утробе и Трупе"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "Каждая комната дает эффект случайного артефакта мамы", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "При входе в новую комнату, предоставляет временный кубик как расходный предмет#Кубик исчезнет при переходе в другую комнату#Дает возможность держать два расходника", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Создает {{TreasureRoom}} Комнату Сокровищ и {{Shop}} Магазин в Соборе", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "↑ +1 к здоровью#Работает для Хранителя", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "При получении урона персонаж роняет 2 своих случайных подбираемых предмета, кроме сердец", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 160] = "В начале каждого этажа создает мешок", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Создает {{TreasureRoom}} Комнату сокровищ и {{Shop}} Магазин в Преисподней", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "Шанс превратиться в Азазеля при зачистке комнаты", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Создает 2 дружественных кучки кала при зачистке комнаты", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "Ставит бесплатную дополнительную бомбу рядом с поставленной бомбой", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "Начиная с Матки заменяет все появляющиеся расходники другими случайными#Чаще всего бомбы и сердца", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "Дает шанс 50% получить эффект случайного пассивного артефакта в каждой комнате из пула данной комнаты", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "После зачистки комнаты появляется небольшой шанс создать дружелюбного скелета", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "+1 костяной контейнер, после перехода на новый этаж", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "Один из предметов, необходимый для трансформации в Гаппи#Если его сбросить, трансформация может исчезнуть", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "Иногда создаёт красные комнаты {{Collectible580}} после зачистки комнаты", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "Дьявольские сделки используют монеты вместо сердец#Одно сердце = 15 монет", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Телепортирует в случайную комнату при подборе монеты#Может телепортировать в секретные комнаты", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "!!! ОДНОРАЗОВЫЙ !!!#Может быть использован для оплаты дьявольской сделки без потери сердец", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Уникальные комнаты сделки с Дьволом", -- Number Magnet
	-- Full old Desc: "↑ +10% к шансу сделки с Дьяволом#Уникальные комнаты сделки с Дьволом"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Открывает проход в Синюю Матку, независимо от времени", -- Strange Key
	-- Full old Desc: "Открывает проход в Синюю Матку, независимо от времени#Использование {{Collectible297}} Ящика Пандоры создает 6 случайных предметов из случайных пулов, при этом артефакт и брелок исчезнут"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Вы получаете спутника-сгусточка, который копирует ваши движения и эффекты слёз, нанося 35% урона#Может получить урон 3 раза, после чего исчезнет и возродится в следующей комнате", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "После прохождения {{ChallengeRoom}} Комнаты Испытаний создаёт случайный сундук#После прохождения {{BossRushRoom}} Комнаты Испытаний Боссами создаёт артефакт", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "50% шанса взорваться при получении урона#Наносит 185 урона и работает с эффектами бомб", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Спутники копируют движения персонажа#Работают как дополнительные персонажи", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Вы получаете дополнительного персонажа-спутника, который копирует движения персонажа и стреляет спектральными слезами#Имеет те же эффекты, что и персонаж, но наносит 50% урона#При использовании бомбы душа ставит дополнительную бомбу#Умирает от одного попадания и возрождается на следующем этаже", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Каждый раз используя активируемый предмет, появляется шанс срабатывания эффекта другого случайного активируемого предмета.", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Создает 5 {{Collectible584}} огоньков при входе в {{AngelRoom}} комнату Ангела#Пожертвование Попрошайкам с шансом может создать случайный огонёк", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "Каждую комнату:", -- The Twins
	-- Full old Desc: "Каждую комнату:#Без спутников: Шанс получить {{Collectible8}} Братика Бобби или {{Collectible67}} Сестру Мэгги# Со спутниками: Шанс скопировать случайного имеющегося спутника"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "В магазинах теперь продаются Спутники#Спутники всегда будут за 10 монет", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "При убийстве врага может появиться случайная Саранча", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "Создает 2 атакующих мухи ( {{Collectible706}} )#При стрельбе летят вперёд и наносят контактный урон, равный урону персонажа", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "33% шанс создать дополнительный скрытый артефакт в {{TreasureRoom}} Комнате Сокровищ#На альтернативных этажах, позволяет увидеть оба предмета", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "Умирая под эффектом окаменения, противники будут заморожены", -- Ice Cube
	-- Full old Desc: "При входе в комнату с некоторой вероятностью заставляет противников окаменеть#Умирая под эффектом окаменения, противники будут заморожены"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Добавляет 1 секунду неуязвимости при каждом убийстве врага", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "Телепортирует в {{TreasureRoom}} Комнату Сокровищ, если она есть на уровне#Если есть {{Planetarium}} Планетарий, то телепортирует в него", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "Превращает все подбираемые предметы, сундуки и монстров в Бомбы", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "Превращает все подбираемые предметы, сундуки и монстров в Монеты", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "Превращает все подбираемые предметы, сундуки и монстров в Ключи", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "Превращает все подбираемые предметы, сундуки и монстров в случайные Сердца", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "При использовании создает на полу люк на следующий этаж#{{LadderRoom}} Создаёт Ретро сокровищницу, если использовано на клетке пола с декорацией (трава, маленькие камешки, бумажки, и т.д.)", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "<MISSING>", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "Дает эффект {{Collectible313}}Святой Мантии#(Блокирует следующий урон)#Эффект длится до получения урона", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "Активирует эффект случайной руны#Эффект руны слабее оригинальной", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Роняет все сердца и подбираемое на пол#После этого остается только половина сердца#Монетки и бомбы могут создать {{Collectible74}} Четвертак или {{Collectible19}} Бум! если их будет достаточно", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "На 1 минуту даёт сильную ауру, отталкивающую вражеские слёзы и врагов", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "Мамина нога топает по полу в течение 1 минуты", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Телепортирует в дополнительную комнату Босса с дополнительной наградой", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Создаёт 1 предмет на пьедестале#Превращает 1 красное или 2 серых сердца в сломанное.", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}", -- VII - The Chariot?
	-- Full old Desc: "Персонаж становится неподвижной, неуязвимой статуей с высокой скорострельностью#Иногда статуя может выглядеть как Эдит"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "Создает 2-4 золотых сундука", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "Превращает артефакты и предметы в монеты по их обычной цене магазина", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "Вызывает один из эффектов {{DiceRoom}} Комнаты Игральной Кости", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "Все враги в комнате становятся медленными и получают двойной урон.", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#При убийстве врагов выпадают монеты", -- XII - The Hanged Man?
	-- Full old Desc: "Превращает персонажа в Хранителя на 30 секунд#Дает тройной выстрел#При убийстве врагов выпадают монеты"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "Активирует эффект Книги Мертвых {{Collectible545}}", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "Заставляет персонажа использовать 5 случайных пилюль", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "Активирует эффект {{Collectible33}} Библии#Даёт полёт и создает спутника {{Collectible390}} Серафима на 30 секунд", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Создаёт 6 кластеров объектов или камней#Высокий шанс скрытых камней", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Удаляет самый старый пассивный (не стартовый) артефакт#Создает 2 артефакта на пьедестале из пула данной комнаты", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "Телепортирует в {{UltraSecretRoom}} Ультра секретную комнату#Создаст красную комнату для выхода к обычным комнатам", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "Накладывает Проклятие Темноты, которое не может быть очищено", -- XIX - The Sun?
	-- Full old Desc: "До конца этажа:#Активирует эффект {{Collectible159}} Духа Ночи#↑ +1.5 к урону#Превращает красные сердца в костяные#Накладывает Проклятие Темноты, которое не может быть очищено"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "Создаёт автомат пополнения (рестока)", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "Создаёт проход в Ретро сокровищницу", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "Одноразовый эффект {{Collectible580}} Красного Ключа", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Повторяет эффект последней использованной пилюли, карты, руны или активируемого предмета", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Изменяет все артефакты в комнате. Они меняются между новым и старым артефактом каждую секунду", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "Убитые враги оставляют половину красного сердца при смерти, которое исчезает через 2 секунды", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Работает как {{Collectible175}} Папин Ключ и {{Collectible580}} Красный Ключ#Открывает все возможные проходы", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "Эффект {{Collectible705}} Тёмных искусств#Дает ↑ +1.0 скорости и способность проходить сквозь врагов/выстрелы в течение 1 секунды#Когда эффект заканчивается, каждому врагу наносится урон и уничтожаются выстрелы, давая персонажу +1 урона за всех поражённых", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "Персонаж сначала делает 8 ядовитых пуков#Потом активирует 7 жопных бомб#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "Персонаж сначала делает 8 ядовитых пуков#Потом активирует 7 жопных бомб#Оставляет жёлтую жижу, стоя на которой получает +1.35 к скорострельности и +1 к урону"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "Призывает 14 мертвых птиц атакующих врагов#Птицы улетают после смерти всех врагов в комнате", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "Персонаж превращается в форму берсерка на 10 секунд#↑ +0.4 к скорости#↑ Скорострельность#↑ +3 к урону#Ближний бой", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "Активирует эффект {{Collectible441}} Мега Заряда на 7.5 секунд", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "персонаж мгновенно умирает и воскрешается с половиной сердца в той же самой комнате#Если персонаж умирает, держа душу, то автоматически использует её", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Активирует эффект {{Collectible105}} D6 и {{Collectible166}} D20#Изменённые предметы будут из случайных пулов", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "Персонаж умирает и становится Потерянными на одну комнату#Сердца учитываются как до применения#(Например, нельзя войти в Комнату Испытаний Боссами, если до использования дверь не была открыта или бесплатно совершить сделку с Дьяволом)", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Создает одного спутника до конца забега", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Создаёт 15 случайной саранчи", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "Создаёт Забытого, повторяющего движения персонажа#Имеет 3 костяных сердца", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "Создаёт 6 случайных огоньков из {{Collectible584}} Книги Добродетелей", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "Создаёт Иакова повторяющего движения персонажа на одну комнату", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Меняет количество бомб и ключей местами#Золотые бомбы и ключи так же меняются", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "Пикселизирует всё на 30 секунд", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} Замедляет персонажа и всех врагов в комнате", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "Ускоряет персонажа и всех врагов в комнате#Эффект повторяется снова после 30 и 60 секунд", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Эффект случайной пилюли#Исчезает после нескольких использований", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "Отравляет всю комнату", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "Нанесет урон в 2 сердца", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Меняет количество бомб и ключей местами#Повышает количество бомб и ключей на 50%#Золотые бомбы и ключи так же меняются", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Порождает много Мега самонаводящихся бомб", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 11)] = "Создает 1 {{Collectible279}} Большого фаната#Не имеет ограничения по количеству", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "Перезаряжает активируемый предмет", -- 48 Hour Energy!
	-- Full old Desc: "Перезаряжает активируемый предмет#Создает много батарейки"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "Опустошает все красные сердца, кроме одного", -- Hematemesis
	-- Full old Desc: "Опустошает все красные сердца, кроме одного#Создает больше сердец на полу"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Вы не можете двигаться 4 секунды", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "Очаровывает всех врагов в комнате", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Создает под вами гигантскую лужу на полу, которая наносит врагам урон", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "Стрельба по диагонали на 60 секунд", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Под вами долгое время появляются кучки", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "Эффект Проклятия Путаницы (Maze) на весь этаж", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Вы дважды становитесь больше#Не влияет на ваш хитбокс", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Вы дважды становитесь меньше#Ваш хитбокс становится меньше", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Призывает 2 синих паука на каждую какашку в комнате", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Призывает 2 синих паука на каждого врага в комнате#Создает от 2-6 синих пауков, когда в комнате нет врагов", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Пикселизирует всё на 90 секунд", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Создает под вами скользкую лужу, которая долго не исчезает", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "Создает под вами лужу из замедляющей слизи, которая долго не исчезает", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "Замедляет всех врагов в комнате", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Увеличивает скорость движения всех врагов в комнате", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Поглощает брелоки и дает их эффект навсегда#Лечит 1 красне сердце при этом#Если нет брелока, то ничего", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "Стреляет скоплением слез с эффектом {{Collectible149}} Ипекака", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Создает последнюю использованную пилюлю", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Дважды повышает 1 случайную характеристику#↓ Дважды понижает 1 случайную характеристику#Не будет понижения, если есть {{Collectible75}}Докторская степень, {{Collectible46}}Счастливая нога или {{Collectible303}}Дева#Не будет повышения, если есть {{Collectible654}}Фальшивая Докторская степень", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Эффект случайной лошадиной пилюли#Исчезает после нескольких использований", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
