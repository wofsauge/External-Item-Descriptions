---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ +1 высота слезы", -- My Reflection
	-- Full old Desc: "Дает слезам эффект бумеранга#↑ +1.5 дальность стрельбы#↑ Множитель х1.6 к скорости слезы#↑ +1 высота слезы"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Спутник с обыкновенными слезами", -- Brother Bobby
	-- Full old Desc: "Спутник с обыкновенными слезами#Наносит 3.5 урона"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Все вражеские мужи становятся союзными", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Возрождение с полным здоровьем", -- 1up!
	-- Full old Desc: "↑ +1 дополнительная жизнь#Возрождение с полным здоровьем"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "С некоторым шансом враги оставят Черное Сердце, если они умерли от отравления", -- The Virus
	-- Full old Desc: "Ядовитое касание#↓ -0.1 к скорости#С некоторым шансом враги оставят Черное Сердце, если они умерли от отравления"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Показывает все иконки на карте#Не влияет на остальную карту", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Полет в пределах комнаты#Моментально убивает Маму и Сердце Мамы!#!!! Убивает ВАС при использовании на Сатане", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Оставляет какашку на полу#Ее можно взорвать, как обычный камень, чтобы проложить мост", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Выстреливает 10 слез вокруг персонажа", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "При использовании замораживает всех врагов в комнате на 4 секунды", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Вызывает взрыв вокруг персонажа", -- Kamikaze!
	-- Full old Desc: "Вызывает взрыв вокруг персонажа"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "При использовании пугает всех врагов в комнате на 5 секунд", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Отравляющая бомба, которую можно бросить в выбранном направлении", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Телепортирует персонажа в случайную комнату кроме комнат Я - ОШИБКА", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% к шансу награды за зачистку комнаты#Высокий шанс выигрыша в автоматах и у наперсточников", -- Lucky Foot
	-- Full old Desc: "↑ +1.0 к удаче#+8% к шансу награды за зачистку комнаты#Высокий шанс выигрыша в автоматах и у наперсточников"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "При использовании запускает ракету, которая приземляется в указанную вами точку", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Атака серным лазером наносящее большой урон", -- Shoop da Whoop!
	-- Full old Desc: "Атака серным лазером наносящее большой урон"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 53] = "Притягивает подбираемые предметы к персонажу", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Показывает карту уровня#Не показывает иконки комнат", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "При активации создает под вами лужу, которая наносит 66 контактного урона в секунду", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Орбитальная муха", -- Distant Admiration
	-- Full old Desc: "Орбитальная муха#Летает на средней дистанции#Наносит 75 контактного урона в секунду"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Позволяет ходить через пропасти шириной в 1 клетку", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "Лечит на пол-сердца за каждые 13 убитых врагов", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Активный предмет можно зарядить дважды", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "Скидка 50% в магазине#Вторая скидка сделает товары бесплатными", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "При использовании призывает 6 тролль-бомб в случайном месте в комнате", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "Замедляет врагов на 8 секунд", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Спутник с обыкновенными слезами", -- Sister Maggy
	-- Full old Desc: "Спутник с обыкновенными слезами#Наносит 3.5 урона"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Заменяет слезы на лазер", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "Заряжающиеся слезы#↑ от 30% до 400% урона#↑ к скорострельности", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "↑ Уменьшает вас", -- Mini Mush
	-- Full old Desc: "↑ +0.3 к скорости#↓ -4.25 дальность стрельбы#↑ +1.5 высота слезы*#(*обе складываются в увеличении дальности стрельбы)#↑ Уменьшает вас"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "УР1: Орбитальный спутник#УР2: Стреляющий спутник#УР3: Маленький Мясной Пацан#УР4: Полноценный Мясной Пацан", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "Больше монет из автомата для сдачи крови", -- PHD
	-- Full old Desc: "Все пилюли имеют либо положительный, либо нейтральный эффекты# +1 пилюля#Лечит 2 сердца#Больше монет из автомата для сдачи крови"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "Открывает секретные комнаты", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "↑ +17.5% шанс сделки с дьяволом", -- Book of Revelations
	-- Full old Desc: "+1 Сердце Души#Многие боссы заменятся на Всадников#↑ +17.5% шанс сделки с дьяволом"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Отнимает все Красные Сердца, кроме одного#Возрождение с 1 сердцем", -- Dead Cat
	-- Full old Desc: "Дает 9 жизней#Отнимает все Красные Сердца, кроме одного#Возрождение с 1 сердцем"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "+1 Сердце Души#↑ +0.7 к урону#↓ -0.18 скорость#Возможность наносить контактный урон#Разрушение камней при хождении по ним"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "При использовании создает на полу люк на следующий уровень#10% шанс создать люк в ретро-сокровищницу", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "При использовании на случайного врага приземляется Монстро", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Спутник, летит в направлении стрельбы", -- Little Chubby
	-- Full old Desc: "Спутник, летит в направлении стрельбы#Наносит 52.5 урона в секунду"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Показывает, что в соседних комнатах#Позволяет увидеть секретные комнаты", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "Неуязвимость + контактный урон (при использовании)#Поедание врагов лечит вас"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "Дает случайную монету каждые 2 комнаты", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Спутник, атакующий лазером", -- Robo-Baby
	-- Full old Desc: "Спутник, атакующий лазером#Наносит 3.5 урона"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "Дает пол-сердца каждые 3 комнаты", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "Спутник с замедляющими слезами", -- Little Gish
	-- Full old Desc: "Спутник с замедляющими слезами#Наносит 3.5 урона"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Спутник с самонаводящимися слезами", -- Little Steven
	-- Full old Desc: "Спутник с самонаводящимися слезами#Наносит 3.5 урона"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Слезы разлетаются на две части при столкновении#Разделенные слезы наносят половину урона", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Меняет артефакты на пьедесталах в комнате", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Полет в пределах комнаты#Ваше тело атакует врагов и наносит 82.5 контактного урона в секунду"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Любой урон отнимает лишь пол-сердца", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ +0.04 к урону за каждую монетку#Чем больше монеток поднимает персонаж, тем меньше урона они дают#На бонус действуют множители персонажей", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "Ядовитые газы", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Ускоряет всех спутников", -- Guardian Angel
	-- Full old Desc: "Орбитальный спутник#Ускоряет всех спутников#Блокирует снаряды#Наносит 105 контактного урона в секунду"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Авто-наводящийся спутник", -- Demon Baby
	-- Full old Desc: "Авто-наводящийся спутник#Имеет небольшой радиус действия#Наносит 3 урона"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Управляемый нож (наносит много урона)", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "+1 заряд после использования активного предмета#Полностью заряжает текущий предмет", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Атакует врагов после того, как вы получите урон", -- Dead Bird
	-- Full old Desc: "Атакует врагов после того, как вы получите урон#Наносит 4 контактного урона в секунду"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "!!! Если у вас 1/2 или меньше красных сердец:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "!!! Если у вас 1/2 или меньше красных сердец:#↑ +1.5 к урону#↑ +0.3 к скорости"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "При использовании дает случайного спутника в пределах комнаты", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Эффект случайного активного предмета", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "+5 Бомб", -- Bobby-Bomb
	-- Full old Desc: "Самонаводящиеся бомбы#+5 Бомб"
	-- English: "Homing bombs"

	[C_ID .. 126] = "При использовании: ↑ +1.2 к урону#Наносит игроку урон в 1 сердце", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Текущий уровень перезапускается и генерируется заново", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Орбитальныя муха", -- Forever Alone
	-- Full old Desc: "Орбитальныя муха#Летает далеко от вас#Наносит 30 контактного урона"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Даёт полет, если вы держите этот предмет#Ваша скорость будет увеличена до 1.5, если у вас меньше 1.5#Атака рывком в выбранном направлении", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "Дает 1 бомбу каждые 2-3 комнаты", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "Чем дольше летит слеза, тем больше урона она наносит", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "!!! При использовании превращает 1 контейнер Красного Сердца в 3 Сердца Души#Не работает с Костяными Сердцами", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "33% шанс, что появится сундук после зачиски комнаты#33% шанс, что не появится ничего", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Портативный банк крови#Дает 1 монету за пол-сердца", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Привлекает к себе врагов#Через 5 секунд взрывается", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "+5 Бомб", -- Remote Detonator
	-- Full old Desc: "Бомбы взрываются при использовании детонатора#+5 Бомб"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "Позволяет носить 2 брелока", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "+5 Бомб", -- Bob's Curse
	-- Full old Desc: "Ядовитые бомбы#+5 Бомб"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "Если вы получили урон и осталось пол-сердца, дает Сердце Души#(Только один раз за комнату)", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "Собирает монеты и дает за них предметы", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Разрушает камни и объекты в пределах комнаты#Может проделать дыру в Секретную комнату!", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "1/6 шанс появления союзной мухи при нанесении урона врагу", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 155] = "Летает по комнате", -- The Peeper
	-- Full old Desc: "Летает по комнате#Наносит 17.1 контактного урона"
	-- English: "Floats around the room"

	[C_ID .. 156] = "+1 заряд при получении урона", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ + к урону, если вас ранят#Эффект сохраняется до конца этажа", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Показывает всю карту#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Показывает всю карту#Дает Сердце Души или случайную карту"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "При использовании на врагов упадут Лучи Света#Лучи наносят урон персонажа+20 врагам", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "После смерти вы появитесь в виде ??? (Синего ребенка)", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Спутник со спектральными слезами", -- Ghost Baby
	-- Full old Desc: "Спутник со спектральными слезами#Наносит 3.5 урона"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Стреляет синим пламенем#Наносит контактный урон#Блокирует вражеские снаряды#Исчезает спустя 2 секунды", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Меняет подбираемые предметы в комнате", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Стреляет слезами по V-образной траектории", -- Harlequin Baby
	-- Full old Desc: "Стреляет слезами по V-образной траектории#Наносит 4 урона"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Слезы заменяются на ракеты!", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "За вами следует нога Папочки, которая давит врагов", -- Daddy Longlegs
	-- Full old Desc: "За вами следует нога Папочки, которая давит врагов#Наносит 40 урона в секунду"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Замедляет всех врагов", -- Spider Butt
	-- Full old Desc: "Замедляет всех врагов#Наносит им небольшой урон"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Спутник, стреляет слезами со случайным эффектом", -- Rainbow Baby
	-- Full old Desc: "Спутник, стреляет слезами со случайным эффектом#Наносит 3-5 урона"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Открывает абсолютно все двери в комнате", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Переносной игровой автомат", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Если вы получите урон, она разобьется#На полу появится лужа, которая наносит 24 урона врагам", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "При получении урона вы отравляете врагов ядовитым газом", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Полет, если вы держите этот предмет#Если стандартная скорость персонажа менее чем 1.5, то при подборе артефакта она будет увеличена до 1.5#Атака рывком и небесными лучами", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "Атакующий комок шерсти#Катается вокруг вас и растет, когда убивает врагов#Большой комок наносит больше урона", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Зеркально повторяет ваши движения#Стреляет в сторону игрока", -- Abel
	-- Full old Desc: "Зеркально повторяет ваши движения#Стреляет в сторону игрока#Наносит 3.5 урона"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Дает слезам случайные эффекты каждые 2-3 секунды", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Появляется 1 подбираемый предмет каждого типа", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Больше предметов в сундуках", -- Mom's Key
	-- Full old Desc: "+2 Ключа#Больше предметов в сундуках"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Превращает врагов в золото при касании#При контакте с врагом, наносит урон, равный количеству монет#Если их разбить, из них выпадут монеты", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Подбираемые предметы становятся двойными", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Шанс создать случайный предмет при получении урона", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "Если активный предмет не заряжен, можно использовать его за 2 сердца", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "УР1: орбитальный спутник#УР2: стреляющий спутник#УР3: маленькая Девочка-Пластырь#УР4: полноценная Девочка-Пластырь", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "!!! +15% к шансу появления врагов-чемпионов", -- Champion Belt
	-- Full old Desc: "↑ +1 к урону#!!! +15% к шансу появления врагов-чемпионов"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "Взрыв оглушает и наносит урон всем врагам в комнате", -- Butt Bombs
	-- Full old Desc: "+5 Бомб#Взрыв оглушает и наносит урон всем врагам в комнате"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Неуязвимость, если вы стоите на месте дольше секунды", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% шанс возродиться после смерти", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "При столкновении такой слезы и снаряда обе исчезнут", -- Lost Contact
	-- Full old Desc: "У слез появится щит, блокирующий другие снаряды#При столкновении такой слезы и снаряда обе исчезнут#↓ -0.15 к скорости слезы"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "При получении урона вы начинаете оставлять ядовитый след в пределах комнаты", -- Anemic
	-- Full old Desc: "↑ +5 дальность стрельбы#При получении урона вы начинаете оставлять ядовитый след в пределах комнаты"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "Очень медленная регенерация", -- Placenta
	-- Full old Desc: "↑ +1 к здоровью#Очень медленная регенерация"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "+5 Бомб", -- Sad Bombs
	-- Full old Desc: "Бомба взрывается, выпуская слезы в разные стороны#+5 Бомб#Слезы копируют эффект ваших слез"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Отскакивающие слезы", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Слезы висят в воздухе, пока вы стреляете", -- Anti-Gravity
	-- Full old Desc: "↑ +2 к скорострельности#Слезы висят в воздухе, пока вы стреляете"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "+5 Бомб", -- Pyromaniac
	-- Full old Desc: "Взрывы лечат вас!#+5 Бомб"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "Разделенные слёзы наносят половину урона", -- Cricket's Body
	-- Full old Desc: "↑ +1 к скорострельности#↓ -10.0 дальность стрельбы#Слезы разлетаются на 4 части при столкновении#Разделенные слёзы наносят половину урона"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "Шанс создать Сердце Души/Черное Сердце при получении урона#Шанс создать половину Красного Сердца за убитого врага", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "При получении урона дает 1-2 монеты", -- Piggy Bank
	-- Full old Desc: "+3 Монеты#При получении урона дает 1-2 монеты#Даёт 0-1 за Хранителя"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "Шанс напугать врагов", -- Mom's Perfume
	-- Full old Desc: "↑ +1 к скорострельности#Шанс напугать врагов"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "Атака аналогична атаке Монстро", -- Monstro's Lung
	-- Full old Desc: "Слезы заряжаются и выстреливают россыпью#Атака аналогична атаке Монстро"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "+6 Черных Сердец", -- Abaddon
	-- Full old Desc: "↑ +1.5 к урону#↑ +0.2 к скорости#Шанс напугать врагов#↓ Лишает вас красных сердец#+6 Черных Сердец"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "↑ +0.3 к скорости", -- Stop Watch
	-- Full old Desc: "При получении урона, враги в комнате перманентно замедляются#↑ +0.3 к скорости"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "Спектральные слёзы", -- Tiny Planet
	-- Full old Desc: "Слезы летают вокруг вас по орбите#↑ +7.0 к высоте слез#Спектральные слёзы"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Вы будете получать союзного паука за каждого убитого врага", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Превращает врага в какашку при касании", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 241] = "Все предметы, падающие после зачистки комнаты, дублируются#33% шанс, что не появится ничего после зачистки комнаты#Не влияет в Режиме Жадности ", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "Шанс блокировать летящие снаряды#Блокирует с любой стороны", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Щит, блокирующий снаряды", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Атака лазером#Лазер имеет случайные эффекты", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Двойные выстрелы!", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "Показывает секреты на карте", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Спутники наносят больше урона", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Союзные мухи и пауки наносят в два раза больше урона", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "После босса появляются два артефакта на выбор вместо одного#!!! Взять можно только один", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "Все подбираемые бомбы становятся двойными", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Превращает все пилюли в карты", -- Starter Deck
	-- Full old Desc: "Можно нести с собой 2 карты#Превращает все пилюли в карты"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Превращает все карты в пилюли", -- Little Baggy
	-- Full old Desc: "Можно нести с собой 2 пилюли#Превращает все карты в пилюли"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "+5 Бомб", -- Hot Bombs
	-- Full old Desc: "Горящие бомбы, оставляют огонь после взрыва#+5 Бомб"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 258] = "С каждым этажом меняет все артефакты, что у вас имеются, на случайные", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "Иммунитет к Проклятиям", -- Black Candle
	-- Full old Desc: "Иммунитет к Проклятиям#+1 Черное Сердце#Высокий шанс на появление комнаты Дьявола{{DevilRoom}}/Ангела{{AngelRoom}}"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "Чем дальше летит слеза, тем меньше бонус", -- Proptosis
	-- Full old Desc: "↑ +100% бонус к урону#Чем дальше летит слеза, тем меньше бонус"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Когда осталось 1 сердце, наносит всем урон в комнате", -- Missing Page 2
	-- Full old Desc: "+1 Черное Сердце#Когда осталось 1 сердце, наносит всем урон в комнате"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "При получении вами урона начинает атаковать врагов", -- Smart Fly
	-- Full old Desc: "Орбитальная муха#При получении вами урона начинает атаковать врагов#Наносит 22.5 урона в секунду"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "Спутник, блокирует снаряды#После блокирования с шансом 10% может нанести урон всем врагам в комнате", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Оставляет за собой замедляющую слизь#Может создать союзных пауков после зачистки комнаты", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Стреляет лазером#Наносит 3.5 урона", -- Robo-Baby 2.0
	-- Full old Desc: "Стреляет лазером#Управляется клавишами стрельбы#Наносит 3.5 урона"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Атакует союзными мухами", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Оставляет кровавый след, который наносит врагам 6 урона в секунду", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Лечит вас на пол-сердца, когда убивает кого-нибудь", -- Leech
	-- Full old Desc: "Лечит вас на пол-сердца, когда убивает кого-нибудь"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Создает случайные предметы", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Союзная взрывающаяся муха", -- BBF
	-- Full old Desc: "Союзная взрывающаяся муха#Взрыв наносит 60 урона"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Спутник, летит в направлении вашей стрельбы#При контакте взрывается и наносит 60 урона", -- Bob's Brain
	-- Full old Desc: "Спутник, летит в направлении вашей стрельбы#При контакте взрывается и наносит 60 урона"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "При получении вами урона появляется орбитальная муха", -- Best Bud
	-- Full old Desc: "При получении вами урона появляется орбитальная муха#Наносит 75 урона в секунду"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "Стреляет заряжающимся кровавым лазером", -- Lil Brimstone
	-- Full old Desc: "Стреляет заряжающимся кровавым лазером#Наносит 31.5 урона в секунду"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Ваш персонаж неуязвим#!!! Вы теряете здоровье, когда ваш спутник-сердце получает урон", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Спутник, атакующий врагов и пугающий их", -- Lil Haunt
	-- Full old Desc: "Спутник, атакующий врагов и пугающий их#Наносит 4 урона в секунду"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "Спутник, собирающий красные сердца и дающий Сердца Души или пауков взамен", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Большая орбитальная муха", -- Big Fan
	-- Full old Desc: "Большая орбитальная муха#Блокирует снаряды#Наносит 30 урона в секунду"
	-- English: "Large orbital"

	[C_ID .. 280] = "Спутник, создает союзных пауков в комнате с врагами", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Отвлекает на себя внимание врагов", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Позволяет вам прыгать", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Эффект D4, D6 и D20:#Меняет все предметы в комнате#Меняет артефакты на пьедесталах#Меняет артефакты, которые вы носите", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "При активации случайным образом изменяет пассивные артефакты, которые носит ваш персонаж", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Меняет всех врагов в комнате на случайных", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "При использовании копирует эффект взятой вами карты/руны", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Стреляет красным пламенем#Пламя сохраняется до тех пор, пока не будет повреждено 5 раз", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "Может хранить в себе до 4 красных сердец", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "При использовании превращает всех врагов в кучки#Не работает на Боссах", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "Атака кровавым лазером в 4 стороны", -- Head of Krampus
	-- Full old Desc: "Атака кровавым лазером в 4 стороны"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "При использовании пукает и отталкивает врагов", -- Butter Bean
	-- Full old Desc: "При использовании пукает и отталкивает врагов"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "При использовании наносит урон всем врагам в комнате#Цена использования - 1 монета", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Превращает 2 Сердца Души в 1 Красное Сердце", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "При полном ускорении вы становитесь неуязвимым", -- Taurus
	-- Full old Desc: "Вы становитесь быстрее в комнате с врагами#При полном ускорении вы становитесь неуязвимым"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Столкновение с врагами наносит им урон", -- Aries
	-- Full old Desc: "↑ +0.25 к скорости#Столкновение с врагами наносит им урон"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "При получении урона любой следующий урон в пределах комнаты отнимет пол-сердца", -- Cancer
	-- Full old Desc: "+3 Сердца Души#При получении урона любой следующий урон в пределах комнаты отнимет пол-сердца"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Больше размер", -- Leo
	-- Full old Desc: "Позволяет ломать камни, растаптывая их#Больше размер"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Шанс временной неуязвимости после получения урона#Превращает негативные пилюли в положительные#100% шанс с удачей +10", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Балансирует ваши параметры!#!!! Все последующие улучшения будут распределяться между всеми вашими параметрами", -- Libra
	-- Full old Desc: "+6 Монет / Ключей / Бомб#Балансирует ваши параметры!#!!! Все последующие улучшения будут распределяться между всеми вашими параметрами"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Персонаж оставляет за собой след из слез, наносящий врагам 6 урона в секунду", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "После смерти вы появитесь в виде Черного Иуды#(он имеет урон x2 и + к скорости)", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 313] = "Блокирует первый полученный урон, после чего исчезает#Обновляется каждую комнату", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Вы можете ломать камни, растаптывая их", -- Thunder Thighs
	-- Full old Desc: "↑ +1 к здоровью#↓ -0.4 к скорости#Вы можете ломать камни, растаптывая их"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Магнитные слезы#Притягивают предметы и врагов", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "Если вы получите урон во время зарядки, с некоторой вероятностью телепортирует в случайную комнату", -- Cursed Eye
	-- Full old Desc: "Заряженный залп из слез#Если вы получите урон во время зарядки, с некоторой вероятностью телепортирует в случайную комнату"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Слезы оставляют ядовитую лужу#Лужа наносит 30 урона в секунду", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Братик, атакующий врагов в ближнем бою", -- Gemini
	-- Full old Desc: "Братик, атакующий врагов в ближнем бою#Наносит 6 контактного урона в секунду"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Медленно летает по комнате#Стреляет в ту же сторону, что и вы", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Управляемая муха", -- ???'s Only Friend
	-- Full old Desc: "Управляемая муха#Наносит 5 контактного урона в секунду"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Цепь + Шар", -- Samson's Chains
	-- Full old Desc: "Цепь + Шар#Может ломать камни, ранить врагов и блокировать снаряды#Шар наносит 10.7 контактного урона в секунду"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Копирует эффект слез другого спутника#Слеза наносит вдвое больше урона", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "При использовании выпускает 8 слез вокруг персонажа#Заряжается во время стрельбы", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Телепортирует в:#{{SecretRoom}}{{SuperSecretRoom}}Секретную комнату-, Комнату Я - ОШИБКА- или {{TreasureRoom}}Комнату с артефактом", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Отрезает вам голову#Голова стоит на месте#Вы управляете своим телом", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Заряд уменьшается, когда вы держите ПРОБЕЛ#Когда у вас не останется зарядов, вы получите кратковременную неуязвимость#!!! Если вы слишком долго держите ПРОБЕЛ, вы получите урон#Если вы отпустите ПРОБЕЛ, неуязвимость исчезнет", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Дает короткую неуязвимость, если осталось 1/2 сердца#Позволяет пройти на уровень Сундук", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Наносит урон всем врагам в комнате, если осталось 1/2 сердца#Позволяет пройти на уровень Темная комната", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Большая управляемая слеза", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 332] = "После смерти вы появитесь в виде Лазаря и получите его артефакт", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Полностью открывает карту на всех этажах", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Снаряды замедляются и отлетают в сторону от вас", -- The Soul
	-- Full old Desc: "+2 Сердца Души#Снаряды замедляются и отлетают в сторону от вас"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Замедляет или ускоряет врагов в каждой 4-ой комнате", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Замораживает врагов#Может хватать недоступные предметы", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Дублирует все артефакты / предметы в комнате", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "Копирует эффект пилюли, которую вы держите", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "При заходе в комнату все враги получают отравление", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Наносит 5 урона и отравляет ближайших врагов#Создает взрывную волну#Этой волной можно открыть секретные комнаты", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "↓ При использовании уменьшает здоровье до 1/2 сердца#Выпускает огромную сквозную спектральную слезу ((УРОН+1) X 10)", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Бомбы взрываются по +-образной траектории", -- Bomber Boy
	-- Full old Desc: "+5 Бомб#Бомбы взрываются по +-образной траектории"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Активируемый предмет теперь имеет двойной эффект", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Дублирует ваших спутников в пределах комнаты#Если у вас нет спутников, создаёт {{Collectible113}} Малыша демона на данную комнату", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Спектральные слезы", -- The Wiz
	-- Full old Desc: "Вы стреляете по диагонали двумя слезами, как от пилюли R U A WIZARD#Спектральные слезы"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Увеличивает отдачу", -- 8 Inch Nails
	-- Full old Desc: "↑ +1.5 к урону#Увеличивает отдачу"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Копирует атаку вашего персонажа", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Стреляет слезами с таким же уроном, что и у вашего персонажа", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Дает случайный предмет через каждые несколько комнат", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "При блокировании 10 выстрелов в одной комнате создает вечное сердце", -- Sworn Protector
	-- Full old Desc: "Наносит 105 контактного урона#Блокирует и притягивает снаряды#При блокировании 10 выстрелов в одной комнате создает вечное сердце"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Орбитальная муха", -- Friend Zone
	-- Full old Desc: "Орбитальная муха#Наносит 45 контактного урона"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Летит вдоль стен и препятствий", -- Lost Fly
	-- Full old Desc: "Летит вдоль стен и препятствий#Наносит 105 контактного урона"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Бомбы прилипают к врагу#При убийстве бомбой появляется союзный паук", -- Sticky Bombs
	-- Full old Desc: "+5 Бомб#Бомбы прилипают к врагу#При убийстве бомбой появляется союзный паук"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Стрельба в одном направлении увеличивает вашу Скорострельность", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 371] = "При получении вами урона появляются 6 тролль-бомб#Бомбы влияют на модификаторы", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Спутник-батарейка#Со случайным шансом создает батарейку или на время замораживает всех врагов#Шанс получить +1 заряд к вашему предмету", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ +25% к урону за каждое точное попадание (макс. +100%)#Шанс потери множителя при промахе", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 375] = "20% шанс отразить снаряд#Иммунитет от взрывов (в т.ч. Маминой Ноги)", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Обновляет предметы в магазине после покупки", -- Restock
	-- Full old Desc: "Создает 3 случайных предмета#Обновляет предметы в магазине после покупки"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Вражеские пауки становятся нейтральными", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "После непрерывной стрельбы в течение 3 секунд, создает под вами бомбу из задницы", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Вместо ключей двери требуют монету", -- Pay To Play
	-- Full old Desc: "+5 Монет#Вместо ключей двери требуют монету"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "В начале следующего забега вы получите случайный артефакт", -- Eden's Blessing
	-- Full old Desc: "↑ +0.7 к скорострельности#В начале следующего забега вы получите случайный артефакт"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Можно бросить во врага, чтобы поймать его#После следующего броска пойманное существо появится как союзное#Оно будет с вами, пока не умрет", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "При активации разделяет каждую слезу в комнате на 6 слёз во все стороны", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "Заряжается и атакует врагов с разгона#Наносит 90 контактного урона в секунду", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Подбирает лежащие монеты. Каждые подобранные им 6 монет повышают его уровень (УР4 требует 12 монет)#УР2: может дать случайный подбираемый предмет#УР3: стреляет в ту же сторону, что и вы#УР4: преследует врагов, оставляет бомбы#после получения УР4 продолжает собирать монеты и давать за них предметы", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Меняет все камни и объекты в комнате на случайные (кучки, горшки, TNT, каменные блоки и т.д.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Создает большую ауру, замедляющую врагов и летящие вражеские снаряды", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Собирает лежащие ключи, взамен дает случайные сундуки", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "Создает случайную руну каждые 5 комнат", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Спутник, атакует самонаводящимися слезами", -- Seraphim
	-- Full old Desc: "Спутник, атакует самонаводящимися слезами#Слёзы наносят 10 урона"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "При получении вами урона все враги в комнате очаровываются", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Дает вам эффект случайного знака зодиака#С каждым этажом эффект меняется", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "Случайный шанс отравить врага#Отравляющий контактный урон#Отравленные враги после смерти с некоторым шансом оставляют Черное Сердце", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +0.3 высота слез", -- Marked
	-- Full old Desc: "Вы стреляете слезами в направлении маркера, которым вы управляете#↑ +0.7 к скорострельности#↑ +3.15 дальность стрельбы#↑ +0.3 высота слез"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "Вы атакуете заряжающимися лазерными кольцами", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Создает порталы, между которыми можно быстро перемещаться#Можно установить в разных комнатах", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ +0.5 высота слезы", -- Tractor Beam
	-- Full old Desc: "Ваши слезы летят строго вдоль луча света, не отклоняясь даже при вашем движении#↑ +0.5 скорострельность#↑ +5.25 дальность стрельбы#↑ +0.16 скорость слезы#↑ +0.5 высота слезы"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Случайный шанс уменьшить врага#Уменьшенного врага можно убить, раздавив его", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "Перед вами появляется копье, наносящее x2 от вашего урона#Шанс напугать врагов при контакте", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "Слезы со случайным шансом могут прилипнуть к врагу, после чего они начнут увеличиваться в размерах, пока не взорвутся", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Никаких ограничений: везде, где есть артефакты, можно найти абсолютно любой!", -- Chaos
	-- Full old Desc: "Никаких ограничений: везде, где есть артефакты, можно найти абсолютно любой!#Создает 1-6 подбираемых предметов"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Показывает здоровье врагов и урон, наносимый вами#Накладывает на врага случайный эффект при контакте#Может создать союзного паука или батарейку", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "После блокирования может выпустить газы, которые могут отравить,очаровать или отбросить врагов", -- Farting Baby
	-- Full old Desc: "Блокирует снаряды#После блокирования может выпустить газы, которые могут отравить,очаровать или отбросить врагов"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Летает по комнате и накладывает на врагов случайные эффекты при контакте", -- GB Bug
	-- Full old Desc: "Летает по комнате и накладывает на врагов случайные эффекты при контакте"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Случайным образом меняет ваши параметры#Влияет только на урон, скорострельность, дальность стрельбы и скорость", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Повышает одну из характеристик, в зависимости от цвета аура#При получении урона, случайная аура появится в следующей комнате#{{ColorRed}}Красная{{CR}} = +4.0 к урону#{{ColorBlue}}Синяя{{CR}} = -4 к задержке между выстрелами#{{ColorYellow}}Желтая{{CR}} = +0.5 скорость#{{ColorOrange}}Оранжевая{{CR}} = +7.5 дальность стрельбы, +1 высота слезы", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "При получении вами урона появится черное кольцо, наносящее большой урон#Убитые кольцом враги имеют шанс оставить Черное Сердце", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "Если у персонажа нет красных сердец:#Дает полет#10 секунд неуязвимости каждые 40 секунд в комнате с врагами, когда секунды на таймере достигли 00, 20 или 40", -- Empty Vessel
	-- Full old Desc: "+2 Черных Сердца#Если у персонажа нет красных сердец:#Дает полет#10 секунд неуязвимости каждые 40 секунд в комнате с врагами, когда секунды на таймере достигли 00, 20 или 40"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "↑ За каждое убийство дает +0.5 к урону#Макс. +5 урона за 10 убийств#Действует в пределах комнаты", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Получив 15 кол-во урона, вы перманентно получите дьявольского спутника#До 4 возможных спутников", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Подобрав 15 кол-во сердец, вы перманентно получите ангельского спутника#До 5 возможных спутников", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "В золотых комнатах появляются 2 предмета на выбор#Взять можно только один", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "Если нет неполных красных сердец:#{VAR:EFFECTLIST}#При получении урона бонус сбрасывается и обновляется при переходе в другую комнату", -- Crown Of Light
	-- Full old Desc: "+2 Сердца Души#Если нет неполных красных сердец:#↑ +100% урона#↑ +5.25 дальности#↑ +0.5 высоты слезы#↓ -0.3 скорости слезы#При получении урона бонус сбрасывается и обновляется при переходе в другую комнату"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Можно переносить с собой 2 карты/руны/пилюли", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Летает по комнате, имеет ауру, которая наносит врагам урон#↑ +50% к урону, когда вы внутри ауры", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Каждая слеза имеет случайный эффект", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Телепортирует в случайную комнату, в которой вы еще не были", -- Teleport 2.0
	-- Full old Desc: "Телепортирует в случайную комнату, в которой вы еще не были#Последовательность: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}> Комната Я - ОШИБКА"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Вы оставляете за собой на полу черный след#Образовавшийся из него круг создаст пентаграмму, которая наносит врагам 10 урона за тик", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "Накладывает очарование на ближайших врагов при активации", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Перенесет вас в предыдущую комнату#Все вокруг восстанавливает свое первоначальное состояние, какое они имели, когда вы были в предыдущей комнате", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Большой круг Света, наносящий урон#Шанс отразить вражеский снаряд", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Все подбираемые предметы с шансом 33% могут быть заменены на мешочки#Создает мешочек", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Фонарик, который пускает конус света в сторону стрельбы персонажа. Свет замедляет врагов и их снаряды", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Создает бочку с динамитом#Бочку можно двигать по комнате#Если использовать повторно в той же комнате, взорвет старую бочку и создаст новую", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "Есть шанс в 5% появления монетки после попадания по врагу", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Стреляет в ближайших врагов нанося урон эквивалентный урону персонажа", -- Papa Fly
	-- Full old Desc: "Повторяет ваши движения с задержкой в 3 секунды#Стреляет в ближайших врагов нанося урон эквивалентный урону персонажа"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Слезы, пройденные через него, дублируются и приобретают больше скорости", -- Multidimensional Baby
	-- Full old Desc: "Повторяет ваши движения с задержкой в 3 секунды#Слезы, пройденные через него, дублируются и приобретают больше скорости"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Бомбы с некоторой вероятностью оставляют случайный подбираемый предмет после взрыва", -- Glitter Bombs
	-- Full old Desc: "+5 Бомб#Бомбы с некоторой вероятностью оставляют случайный подбираемый предмет после взрыва"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "При получении вами урона накладывает эффект страха на всех врагов и оставляет черную союзную личинку, атакующая врагов", -- My Shadow
	-- Full old Desc: "При получении вами урона накладывает эффект страха на всех врагов и оставляет черную союзную личинку, атакующая врагов#Остается с вами, пока не умрет"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "За каждое убийство в банке будет появляться одна союзная муха#Всего можно накопить 20 мух#Использование Банки с мухами выпустит всех мух", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Спутник, стреляет в 4 стороны", -- Lil Loki
	-- Full old Desc: "Спутник, стреляет в 4 стороны#Наносит 3.5 урона за выстрел"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "При получении вами урона разбивается, после этого вы получите + к скорострельности в пределах комнаты#Обновляется каждую комнату", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Восстанавливает ранее убитых врагов в комнате#Позволяет повторно получить награду за зачистку комнаты#!!! Если использовать в битве с Алчностью, то комната может превратиться в Магазин", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "↓ -17 дальность стрельбы", -- Kidney Stone
	-- Full old Desc: "В случайный момент персонаж перестанет стрелять, в это время можно зарядить burst-атаку#Персонаж выплюнет почечный камень, наносящий большой урон, а затем выпустит шквал слез с очень высокой скоростью#↓ -0.2 скорость#↓ -17 дальность стрельбы#↑ +2.0 высота слезы"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "При использовании атакует мощным кровавым потоком, как у Мега-Сатаны# Атака длится 15 секунд# Можно перемещаться между комнатами, продолжая стрелять", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "!!! Если есть ровно 1 красное сердце:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "!!! Если есть ровно 1 красное сердце:#↑ +1.5 дальность стрельбы#↑ +0.7 скорострельность#↑ +0.2 скорость слезы#↑ +1 высоты слезы#Не работает с персонажами без красных сердец"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Каждый 15 выстрел вы будете выпускать большую россыпь слез#Каждая такая слеза нанесет двойной урон", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "Вы услышите собачий лай, если в комнате спрятан люк в ретро-сокровищницу", -- Dog Tooth
	-- Full old Desc: "↑ +0.3 к урону#↑ +0.1 к скорости#Вы услышите собачий вой, если рядом будет {{SecretRoom}}{{SuperSecretRoom}}Секретная комната#Вы услышите собачий лай, если в комнате спрятан люк в ретро-сокровищницу"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "Во время стрельбы появляется зеленая аура, отравляющая врагов", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Во время стрельбы можно с некоторым шансом создать облако, наносящее 5 урона в секунду# Его можно подвинуть, стреляя в него", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "При получении вами урона есть шанс получить ↑ +5 к дальности атаки и возможность оставлять за собой кровавый след, или создать красное сердце#Действует в пределах комнаты", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "Вражеский снаряд с шансом 25% может отскочить обратно с эффектом оглушения", -- Metal Plate
	-- Full old Desc: "+1 Сердце Души#Вражеский снаряд с шансом 25% может отскочить обратно с эффектом оглушения"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Слезы могут превратить врага в золото", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "Удваивает эффект всех карт/рун", -- Tarot Cloth
	-- Full old Desc: "Дает случайную карту/руну#Удваивает эффект всех карт/рун"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "При получении урона, вы выпустите 10 слез вокруг себя#Слезы имеют +25 урона", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "↑ +1.5 дальность стрельбы", -- Compound Fracture
	-- Full old Desc: "Вы стреляете костями#Кости делятся на мелкие осколки при столкновении#↑ +1.5 дальность стрельбы#↑ +1.0 высота слезы"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Можно носить две карты / пилюли / руны#Дает случайную карту / пилюлю / руну", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "Дает Счастливую монетку", -- Dad's Lost Coin
	-- Full old Desc: "↑ +1.5 дальность стрельбы#↑ +1 высота слезы#Дает Счастливую монетку"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% шанс блокировать урон от снаряда", -- Cone Head
	-- Full old Desc: "+1 Сердце Души#20% шанс блокировать урон от снаряда"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "Дает случайный брелок", -- Belly Button
	-- Full old Desc: "Дает случайный брелок#+ дополнительный слот под брелок"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "Шанс выстрелить соплей", -- Sinus Infection
	-- Full old Desc: "Шанс выстрелить соплей# Сопля липнет к врагу и наносит ему урон, пока он не умрет"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "Шанс оглушить врагов", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 462] = "После первого попадания слеза удваивает свой урон и становится самонаводящейся", -- Eye of Belial
	-- Full old Desc: "↑ +1.5 дальность стрельбы#↑ +1.0 высота стрельбы#Слезы пронзают врагов насквозь#После первого попадания слеза удваивает свой урон и становится самонаводящейся"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Кислотная слеза может разрушить камень или открыть секретную комнату", -- Sulfuric Acid
	-- Full old Desc: "↑ +0.3 к урону#Кислотная слеза может разрушить камень или открыть секретную комнату"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "С монстров-чемпионов выпадают более хорошие предметы", -- Glyph of Balance
	-- Full old Desc: "+2 Сердца Души#С монстров-чемпионов выпадают более хорошие предметы"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Позволяет стрелять по диагонали, или в любую сторону, если вы стреляете аналоговым стиком", -- Analog Stick
	-- Full old Desc: "↑ +0.3 скорострельность#Позволяет стрелять по диагонали, или в любую сторону, если вы стреляете аналоговым стиком"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "Первый убитый враг в комнате взрывается облаком газа и отравляет всех ближайших врагов# Отравленные враги также взрываются", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "Наносит 10% урона от вашего персонажа врагам, в чью сторону палец смотрит", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Оставляет след из слез#След наносит 6 урона в секунду#При контакте с врагом с некоторым шансом выпустит Луч Света", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Летает по комнате#Останавливается во время стрельбы#Во время остановки он может блокировать вражеские выстрелы", -- Hushy
	-- Full old Desc: "Летает по комнате#Наносит контактный урон#Останавливается во время стрельбы#Во время остановки он может блокировать вражеские выстрелы"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Атакует так же, как и босс Монстро", -- Lil Monstro
	-- Full old Desc: "Заряжает свою атаку#Атакует так же, как и босс Монстро#Каждая слеза наносит по 3.5 урона"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Все спутники следуют за ним#Останавливается во время стрельбы#Телепортируется обратно к вам, когда вы перестаете стрелять", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Очень медленно летит в направлении стрельбы", -- Big Chubby
	-- Full old Desc: "Очень медленно летит в направлении стрельбы#Наносит 40.5 контактного урона в секунду"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "Дублирует 1 случайный предмет в комнате", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "!!! При использовании поглощает все артефакты в комнате#Активный артефакт добавит свой эффект к эффекту Void'а#↑ Пассивный артефакт дает случайный бонус к характеристикам", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "При активации все враги замирают до тех пор, пока вы не выстрелите#Замороженные враги наносят урон при касании", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "Поглощает переносимый вами брелок и дает вам его эффект навсегда#Увеличенный шанс на выпадение брелока", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Превращает каждый подбираемый в комнате предмет в союзного паука/муху#Удваивает количество имеющихся мух/пауков", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "При использовании меняет вашего персонажа на случайного#Удаляет последний подобранный вами артефакт", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Действует на весь этаж#Взрывает все объекты#{VAR:EFFECTLIST}#Открывает секретные комнаты / комнату Босс-Раша / вход в Синюю Утробу", -- Mama Mega!
	-- Full old Desc: "Действует на весь этаж#Взрывает все объекты#Наносит 200 урона всем врагам#Открывает секретные комнаты / комнату Босс-Раша / вход в Синюю Утробу"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "При использовании отталкивает врагов и создает взрывную волну#Может открывать двери и разрушать камни", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% шанс дублировать все предметы в комнате (в т.ч. артефакты)#50% шанс уничтожить все предметы в комнате и создать 1 Монету", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Наносит урон, но без потери здоровья#Активирует предметы, которые работают после получения урона", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "При использовании дает эффект случайного артефакта в пределах комнаты", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Эффект случайного кубика#Вы сможете увидеть, эффект какого кубика будет следующим", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Создает 2 артефакта из пула комнаты, в которой вы находитесь", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "Каждое использование пилюли отравляет врагов в комнате", -- Acid Baby
	-- Full old Desc: "Дает случайную пилюлю каждые три комнаты#Каждое использование пилюли отравляет врагов в комнате"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Показывает секретные комнаты, меченые камни или потайные люки под камнями", -- YO LISTEN!
	-- Full old Desc: "↑ +1 к удаче#Показывает секретные комнаты, меченые камни или потайные люки под камнями"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "За каждое пустое сердце дает ↑ +0.2 к урону#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "За каждое пустое сердце дает ↑ +0.2 к урону"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Электрические слезы#При столкновении испускают искры в случайном направлении#Искры наносят половину урона персонажа", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Шанс выстрелить пламенем вместо слезы#Пламя сохраняется до тех пор, пока не будет повреждено 5 раз", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 497] = "Сбивает с толку всех врагов и камуфлирует персонажа при заходе в комнату до тех пор, пока вы не начнете стрелять", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "Если после Босса должна появиться комната Дьявола{{DevilRoom}}/Ангела{{AngelRoom}}, то появятся обе#Зайти можно только в одну на выбор", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "За каждые 25 монет дает ↑ +1 к здоровью#Позволяет Хранителю иметь больше здоровья", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Шанс выстрелить замедляющей слезой, наносящей больше урона и оставляющей слизь на полу", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "При использовании призывает союзную муху-турель, атакующую врагов#Каждый выстрел наносит по 2 урона", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Шанс появления союзного существа при заходе в новую комнату", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "При попадании по врагу со спины, наносится двойной урон и накладывается кровотечение, наносящее урон в 10% от макс. здоровья врага каждые 5 секунд", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "Наносит ваш урон + 10% от макс. здоровья врага#Действует на всех врагов в комнате#Шанс получить пол-красного сердца или пол-Сердца Души", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Орбитальный спутник, при контакте накладывает кровотечение, наносящее урон в 10% от макс. здоровья врага каждые 5 секунд#Не блокирует выстрелы", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Орбитальный спутник, каждые 2 секунды стреляет в направлении своего взгляда", -- Bloodshot Eye
	-- Full old Desc: "Орбитальный спутник, каждые 2 секунды стреляет в направлении своего взгляда#Наносит 30 контактного урона#Слёзы наносят 3.5 урона"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Призывает союзника - безумную версию босса#Босс выбирается случайным образом#Действует в пределах комнаты", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Летает вокруг случайного врага, пока тот не умрет", -- Angry Fly
	-- Full old Desc: "Летает вокруг случайного врага, пока тот не умрет#Наносит 30 контактного урона"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Кидает на землю черную дыру, засасывающую в себя все, в т.ч. врагов#Наносит 0.4 урона за тик#Разрушает близлежащие камни#Длится 6 секунд", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Шанс очаровать/испугать врага#Случайный шанс создать радужную кучку при получении урона", -- Bozo
	-- Full old Desc: "↑ +0.1 к урону#+1 Сердце Души#Шанс очаровать/испугать врага#Случайный шанс создать радужную кучку при получении урона"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Вызывает 'лаги' у врагов и их снарядов случайным образом#С шансом 25% подбираемые предметы могут залагать и удвоиться", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Создает артефакт из пула комнаты, в которой вы находитесь#Шанс получить Кусок Угля или Какашку", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Разбрызгиватель, стреляющий слезами по кругу#Может копировать эффекты ваших слез", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Убирает задержку между использованиями бомб, таким образом вы можете очень быстро использовать их, быстро нажимая клавишу бомбы", -- Fast Bombs
	-- Full old Desc: "+7 Бомб#Убирает задержку между использованиями бомб, таким образом вы можете очень быстро использовать их, быстро нажимая клавишу бомбы"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Случайный ребенок из кооп-режима#Имеет случайный эффект слез#Случайным образом меняется каждый этаж", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Безумная версия спутника#Каждые 10 секунд меняется случайным образом", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "+1 заряд за каждые 15 убийств", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Делает один случайный предмет в магазине{{Shop}} или в комнате Дьявола{{DevilRoom}} бесплатным", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Замораживает ближайшие вражеские снаряды на 3 секунды#Затем они улетают обратно#Перезаряжается за 3 секунды", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "При использовании подбирает до 6 предметов#Повторное использование создает эти предметы на полу#Можно перемещать предметы между комнатами", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Слезы соединены между собой электрическим разрядом", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "При получении урона может появиться орбитальный спутник#Макс. 3 спутника одновременно#Спутники будут уничтожены, если получат слишком много урона", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Появляется случайный спутник-всадник, который меняется каждые 10 секунд", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "!!! Спутник, который выполняет ваши приказы:#Открывает двери и сундуки, Подбирает предметы, Ворует артефакты из магазина / у дьявола, атакует врагов, взрывается, активирует нажимные плиты", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Слеза, пролетевшая через орбитальную призму, разделится на 4 такие же слезы", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Слезы теперь имеют физику, как бильярдные шары", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Дает полезную награду, если вы убиваете врагов в том порядке, в каком они будут помечены", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "↓ скорострельность", -- Haemolacria
	-- Full old Desc: "Слезы летят по дуге#При столкновении разлетаются на осколки#↑ +31% к урону#↓ скорострельность"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Слеза в полете замедляется#После остановки разрывается на маленькие слезы#Можно\"накормить\" слезу, стреляя в нее, тогда она станет больше", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Слезы становятся пронзающими лучами света#(принцип похож на Brimstone)", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Позволяет носить 2 активных предмета#Переключение на CTRL (держите CTRL играя за \"Забытого\")", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 536] = "Приносит 2 случайных спутников игрока в жертву, взамен дает дьявольский артефакт за каждого#Превращает союзных пауков/мух в монеты", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "+1 пилюля#Атакует, выплевывая на пол слизь#Когда вы съедаете любую пилюлю, тип его атаки меняется", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "При получении урона есть шанс поглотить брелок и получить его эффект навсегда", -- Marbles
	-- Full old Desc: "Дает 3 случайных брелока#При получении урона есть шанс поглотить брелок и получить его эффект навсегда"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "При получении им урона появляется зачарованный враг#Чем больше комнат пройдено без получения урона, тем сильнее будет зачарованное существо", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Слезы отскакивают от пола#Удар об пол сопровождается уроном по площади", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Отражает снаряды", -- Slipped Rib
	-- Full old Desc: "Орбитальный спутник#Отражает снаряды"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "При получении урона создает на полу Белую Кучку#Белая кучка имеет ауру, которая ↑ увеличивает вашу скорострельность и имеет шанс заблокировать вражеский урон#{VAR:EFFECTLIST}", -- Hallowed Ground
	-- Full old Desc: "При получении урона создает на полу Белую Кучку#Белая кучка имеет ауру, которая ↑ увеличивает вашу скорострельность и имеет шанс заблокировать вражеский урон#При уничтожении кучки аура также исчезает"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Гвоздь, парящий перед персонажем#Наносит контактный урон", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "При использовании призывает орбитальную кость или зачарованного монстра за каждого убитого врага в комнате#Использовать до выхода из зачищенной комнаты", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Создает кольцо-ауру, замораживающую врагов", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "Дает брелок \"Загадочная бумажка\"", -- Divorce Papers
	-- Full old Desc: "+1 Костяное Сердце#↑ +0.7 скорострельность#Дает брелок "Загадочная бумажка""
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Спутник-бумеранг#Может подбирать предметы", -- Jaw Bone
	-- Full old Desc: "Спутник-бумеранг#Наносит 7 контактного урона#Может подбирать предметы"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 550] = "Мамина Нога постоянно атакует вас#Использование останавливает Мамину Ногу в пределах комнаты#!!! Если вы поменяете ее на другой предмет и выйдете из комнаты, она исчезнет#Требуется для открытия Забытого#Прохождение комнаты Boss-Rush оставит Вторую часть лопаты", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Вторая часть лопаты#!!! Используйте лопату на кучке грязи на уровне \"Темная Комната\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "При использовании создает на полу люк на следующий уровень#!!! Используйте лопату в куче грязи на уровне \"Темная Комната\"#!!! Открывает кое-что крутое", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "При получении вами урона, на пол падает монетка", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "Больше предметов из какашек", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "Уменьшает количество необходимых для предмета зарядов на 1", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "Телепортирует в случайную комнату, когда вы используете активный предмет", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "х2 шанс на появление врагов-чемпионов", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Притягивает монеты", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "Выше шанс найти {{Collectible33}}Библию в {{Shop}}Магазине и {{Library}}Библиотеке", -- Rosary Bead
	-- Full old Desc: "+50% к шансу появления {{AngelRoom}} Комнаты Ангела#Выше шанс найти {{Collectible33}}Библию в {{Shop}}Магазине и {{Library}}Библиотеке"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "5% шанс активировать эффекта артефакта Геймкида при получении урона#(короткая неуязвимость + контактный урон)"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Пульсирующие слезы#Влияет только на хитбокс", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ +0.3 к скорострельности", -- Wiggle Worm
	-- Full old Desc: "Слезы летят волнами#↑ +0.3 к скорострельности"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Слезы летят по спирали", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "Слезы на 50% шире#Увеличенное отталкивание", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "!!! ОДНОРАЗОВЫЙ !!!#Позволяет взять один любой предмет из магазина бесплатно", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Шипы и лужи больше не наносят вам урон", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "На месте уничтоженного камня появляется монета", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "+1% к шансу появления черных сердец", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "+3% к шансу появления вечных сердец", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Золотые сундуки открываются без ключей", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "Дает Черное Сердце, если осталось 1/2 сердец#!!! Исчезает после 3 использований", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Имитирует \"Фотокарточку\", \"Негатив\", \"Потерянную страницу\" и \"Плакат о пропавшем без вести\"#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Имитирует "Фотокарточку", "Негатив", "Потерянную страницу" и "Плакат о пропавшем без вести""
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "!!! Меняет сердца в комнатах на черные, или на другие предметы#Уменьшает выпадение сердец", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "После смерти в {{SacrificeRoom}} Комнате Жертвоприношений вы появитесь в виде \"Потерянного\"#Если он уже открыт, то персонаж может возродиться за него за пределами Комнаты Жертвоприношений", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "Каждая монета заставляет вас пукать", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Пукает или оставляет кучку каждые пол-минуты", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "↑ +10 дальность стрельбы", -- Hook Worm
	-- Full old Desc: "Слезы летят по Г-образной траектории#↑ +10 дальность стрельбы"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "22% шанс возродиться за ??? (\"Синего Ребенка\")", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "При получении урона призывает 1 синюю муху", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% шанс получения эффекта случайного гриба или Компаса каждую комнату", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "10% шанс при зачистке комнаты получить случайное сердце#Шанс на бонусное сердце из судуков, помеченных камней и разрушенных автоматов", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "10% шанс при зачистке комнаты получить ключ#Шанс на бонусный ключ из судуков, помеченных камней и разрушенных автоматов", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% к шансу появления Синих, Чёрных и Костяных сердец", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "20% шанс получить +1.8 к урону на данную комнату, если вы получили урон", -- Red Patch
	-- Full old Desc: "20% шанс получить +1.8 к урону на данную комнату, если вы получили урон#100% шанс при удаче 8"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "10% шанс при зачистке комнаты получить бомбу#Шанс на бонусную бомбу из судуков, помеченных камней и разрушенных автоматов#!!! Удаляет {{Trinket53}}Клеща", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% к шансу получить награду при зачистке комнаты#Дополнительные предметы из сундуков, помеченных камней и разрушенных автоматов", -- Lucky Toe
	-- Full old Desc: "↑ +1 к удаче#+8% к шансу получить награду при зачистке комнаты#Дополнительные предметы из сундуков, помеченных камней и разрушенных автоматов"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Когда останется 1/2 сердец, телепортирует в предыдущую комнату", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "10% шанс при зачистке комнаты получить пилюлю#Шанс на бонусную пилюлю из судуков, помеченных камней и разрушенных автоматов", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "10% шанс при зачистке комнаты получить карту#Шанс на бонусную карту из судуков, помеченных камней и разрушенных автоматов", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = " 50% шанс получить половину Красного Сердца, когда вы подбираете монету", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "50% шанс получить бомбу, когда вы подбираете монету", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "50% шанс получить ключ, когда вы подбираете монету", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "Когда вы подбираете монету, есть 50% шанс получить дополнительную", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "-15% здоровья Босса#Лечит на 1 сердце, когда вы заходите в {{BossRoom}}Комнату Боссом#!!! После взятия не может быть сброшен#Может быть удалён только {{Trinket41}}Спичкой или проглотив", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Спутник с пронзающими насквозь слезами", -- Isaac's Head
	-- Full old Desc: "Спутник с пронзающими насквозь слезами#Наносит 3.5 урона"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "В начале каждого этажа дает 1 вечное сердце", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "Скидка в комнате Дьявола", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Летает по комнате#Стреляет в том же направлении, что и вы", -- ???'s Soul
	-- Full old Desc: "Летает по комнате#Стреляет в том же направлении, что и вы#Наносит 3.5 урона"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "1/15 шанс получить +0.5 к урону за убийство", -- Samson's Lock
	-- Full old Desc: "1/15 шанс получить +0.5 к урону за убийство#Шанс 100% при удаче 10#Эффект остается в пределах коматы"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Превращает все сундуки в Красные", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Помеченные камни и камни с потайными люками подсвечиваются каждые 10 секунд", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Обезвреживает тролль-бомбы и делает их обычными подбираемыми бомбами", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Эффект случайного брелока червя#Эффект меняется каждые 3 секунды", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "50% шанс срабатывания эффекта случайного кубика при получении урона#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "50% шанс срабатывания эффекта случайного кубика при получении урона"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Притягивает предметы и врагов", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Случайным образом камуфлирует игрока#Сбивает с толку врагов", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Шанс появления союзного паука во время зачистки комнаты", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Бомбы оставляют ядовитую лужу", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "6.66% шанса при зачистке комнаты получить батарейку#+10% шанс, что случайный предмет заменится на батарейку#5% шанс добавить 1 заряд активируемому артефакту при зачистке комнаты", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "10% шанс, что взорвавшаяся бомба оставит еще одну бомбу, которую можно подобрать", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "0.5% шанс найти потайной люк при ломании камней", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Эффект случайного брелока каждую комнату", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "50/50 шанс найти в сундуках дополнительные предметы или враждебную муху", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Увеличивает отталкивание", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Накладываемые на врагов эффекты длятся в два раза дольше", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Малый шанс получить копию карты/руны после ее использования", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Неуязвимость после получения урона длится дольше", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "+15% шанс на двойную Золотую комнату#(два предмета на выбор, взять можно только один)", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "Открывает все {{Shop}} магазины", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "Жадность / Супер Жадность больше не появятся в магазинах / тайных комнатах#Увеличивает выпадение монет", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "Использование Автомата Пожертвований может вылечить вас или создать Попрошайку", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Из сломанной кучки появляется союзная муха", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "Лечит на половину Красного Сердца при использовании ключа#Все половинки сердец заменяются на полные", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Активируемые артефакты не появятся, если такая возможность присутствует", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Спутники ближе друг к другу", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Какашка взрывается после уничтожения", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "Повышает шанс появления Черной Кучки", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ +0.2 скорострельность", -- Cracked Crown
	-- Full old Desc: "↑ Улучшает ваши характеристики примерно на 33% в зависимости от ваших артефактов#↑ +0.2 скорострельность# -1 к задержке между выстрелами"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "Вражеские мухи могут стать нейтральными", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Дублирует всех синих пауков / мух, которых вы создаете", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "Может сработать дважды, после чего исчезнет", -- Tonsil
	-- Full old Desc: "Очень малый шанс появления спутника при получении урона#Может сработать дважды, после чего исчезнет"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "Шанс выстрелить липкой соплей", -- Nose Goblin
	-- Full old Desc: "Шанс выстрелить липкой соплей"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "Шанс выстрелить отскакивающей слезой", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "!!! Когда ваш активный предмет заряжен:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "!!! Когда ваш активный предмет заряжен:#↑ +0.25 к скорости#↑ +0.75 дальность стрельбы#↑ +0.2 скорострельность#↑ +0.10 скорость слезы#↑ +0.5 к урону#↑ +1 к удаче"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "!!! Когда ваш активный предмет разряжен:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "!!! Когда ваш активный предмет разряжен:#↑ +0.5 к скорости#↑ +1.5 дальность стрельбы#↑ +0.4 скорострельность#↑ +0.3 скорость слезы#↑ +1.5 к урону#↑ +2 к удаче"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "+1 дополнительная секретная комната на новом этаже, если брелок при вас", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "!!! Если у вас одинаковое кол-во монет, бомб и ключей:#делает подбираемые предметы двойными", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Увеличивает радиус поражения луж и следов, оставляемых вами", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Урон будет игнорировать Сердца Души / Черные Сердца, отнимая в первую очередь Красные", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "После 1-9 взрывов, которые задели персонажа, брелок сломается и создат монетку, сердце, ключ и ещё один брелок#После использования исчезает#Защита от взрывов никак не влияет", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Все ваши спутники, в т.ч. орбитальные, замирают", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "В Утробе будут появляться {{Shop}} Магазины", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "В Утробе будут появляться {{TreasureRoom}} Комнаты сокровищ", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "Автомат пополнения всегда будет в {{TreasureRoom}} Комнате сокровищ", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "В начале каждой комнаты появляется взрывоопасная союзная муха#Муха наносит двойной урон персонажа + урон от взрыва", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "В начале каждой комнаты появляется ядовитая союзная муха#Муха наносит двойной урон персонажа", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "В начале каждой комнаты появляется замедляющая союзная муха#Муха наносит двойной урон персонажа", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "В начале каждой комнаты появляется союзная муха#Муха наносит 4x урон персонажа", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "В начале каждой комнаты появляется 1-4 союзных мух#Каждая муха наносит двойной урон персонажа", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "Шанс появления крыльев при получении урона#Действует в пределах комнаты", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "В начале нового этажа лечит на половину Красного Сердца", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Полностью перезаряжает ваш активный предмет, когда вы заходите в Комнату Босса", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "Дает одноразовый щит в начале нового этажа", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "При использовании активируемого предмета он окажется на полу на пьедестале", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Боссы-Ангелы будут оставлять другие артефакты вместо частей ключа", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Дверь, через которую вы прошли, остается открытой", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Электрическая цепь связывает ваших спутников между собой#Цепь наносит 6 урона", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Когда вы подбираете монету, появляется союзная муха", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Самонаводящиеся слезы у ваших спутников", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Телепортирует в начало уровня", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Мамина Нога атакует случайного врага", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "Телепортирует в комнату с Боссом ({{BossRoom}})", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Создает 1 бомбу, 1 ключ, 1 монету, 1 сердце", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "Телепортирует в магазин {{Shop}}, если он есть на уровне", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Создает игровой автомат", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "Создает автомат для сдачи крови", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Создает 6 тролль-бомбы", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "Телепортирует в {{TreasureRoom}} Комнату Сокровищ, если она есть на уровне", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "Телепортирует в {{SecretRoom}} Секретную Комнату", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Создает попрошайку", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "Удваивает количество ваших бомб", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "Удваивает количество ваших монет", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "Удваивает количество ваших ключей", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "Удваивает количество ваших красных сердцец#Лечит, но не создает новые сердца", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "Превращает все предметы на полу в бомбы", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "Превращает все предметы на полу в монеты", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "Превращает все предметы на полу в ключи", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "Превращает все предметы на полу в сердца", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "Телепортирует в комнату Дьявола{{DevilRoom}}/Ангела{{AngelRoom}}", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Уничтожает все камни в комнате", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Дублирует все предметы в комнате", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Создает на полу люк на следующий уровень", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "Снимает текущий эффект проклятия", -- Dagaz
	-- Full old Desc: "+1 Сердце Души#Снимает текущий эффект проклятия"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Меняет артефакты на пьедесталах в комнате", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Эффект случайной руны", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Поглощает все артефакты в комнате#Взамен дает + к случайным характеистикам персонажа", -- Black Rune
	-- Full old Desc: "Наносит урон всем врагам в комнате#Поглощает все артефакты в комнате#Взамен дает + к случайным характеистикам персонажа"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Выбрасывается и мгновенно убивает любого врага (даже Босса)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Делает бесплатными все предметы в комнате#Работает как в магазине {{Shop}}, так и в комнате Дьявола {{DevilRoom}}", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Дает \"полезный\" совет", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Вся комната заполняется какашками", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Убивает вас и создает 10 предметов/артефактов в комнате", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Открывает все двери в комнате", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Активирует ваш активный предмет без использования заряда", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Меняет артефакты и предметы в комнате", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Две Мамины Руки прижимают к земле случайных врагов", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "Дает эффект Святой Мантии (блокирует урон и исчезает)#25% шанс создать ещё одну святую карту", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Эффект остается в пределах коматы", -- Huge Growth
	-- Full old Desc: "↑ +7 к урону#↑ +30 дальность#Камни разрушаются при хождении по ним#Вы становитесь больше#Эффект остается в пределах коматы"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#Эффект остается в пределах комнаты", -- Era Walk
	-- Full old Desc: "Замедляет всех врагов#↑ +0.5 к скорости #↓ Снижает скорость стрельбы до 0.6#Эффект остается в пределах комнаты"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = " Создает облако ядовитого газа", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = " Наносит урон в 1 сердце", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = " Меняет количество имеющихся бомб и ключей местами", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = " Создает 5 тролль-бомб", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 10] = "{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: " 3 такие пилюли превратят вас во Взрослого (+1 к здоровью)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = " Телепортирует в случайную комнату#Имеет маленький шанс телепортировать тебя в комнату Я-ОШИБКА", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = " Перезаряжает ваш активный предмет", -- 48 Hour Energy!
	-- Full old Desc: " Перезаряжает ваш активный предмет#Создает 1-2 батарейки"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = " Опустошает все красные сердца, кроме одного", -- Hematemesis
	-- Full old Desc: " Опустошает все красные сердца, кроме одного#Создает 1-4 красных сердца на полу"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = " Вас парализует на несколько секунд", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = " Открывает все секретные комнаты на этаже", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = " Очаровавывает всех врагов в комнате", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "Скрывает карту этажа (Проклятие Потерянного)", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Создает под вами большую лужу на полу, которая наносит врагам урон", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Стрельба по-диагонали#Эффект длится 30 секунд", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "Любой урон в комнате отнимает половину сердца", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Любой урон в комнате отнимает целое сердце", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Под вами в течение 2 секунд появляются кучки", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "Эффект Проклятия Путаницы (Maze) на весь этаж", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Не влияет на ваш хитбокс", -- One makes you larger
	-- Full old Desc: "Вы становитесь больше#Не влияет на ваш хитбокс"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Ваш хитбокс становится меньше", -- One makes you small
	-- Full old Desc: "Вы становитесь меньше#Ваш хитбокс становится меньше"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Призывает 1 союзного паука на каждую кучку в комнате", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Призывает 1 союзного паука на каждого врага в комнате", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Делает экран пиксельным на 30 секунд", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Создает под вами скользкую лужу", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "Создает под вами лужу из замедляющей слизи", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "Замедляет всех врагов в комнате", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Ускоряет всех врагов в комнате", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = " Поглощает переносимые брелоки и дает их эффект навсегда", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "Делает один выстрел рвотным корнем", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Дает последнюю использованную пилюлю", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
