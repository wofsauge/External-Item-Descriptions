---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ +1 височина на сълзите", -- My Reflection
	-- Full old Desc: "Дава бумеранг ефект на сълзите#↑ {{Range}} +1.5 обхват на сълзите#↑ {{Shotspeed}} +0.6 скорост на сълзите#↑ +1 височина на сълзите"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Спътник с нормални сълзи", -- Brother Bobby
	-- Full old Desc: "Спътник с нормални сълзи#Прави 3.5 щети на сълза"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Враждебните мухи стават приятелски", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Прераждаш се с пълно здраве", -- 1up!
	-- Full old Desc: "↑ Допълнителен живот#Прераждаш се с пълно здраве"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Отровените врагове могат да пуснат черно сърце", -- The Virus
	-- Full old Desc: "{{Poison}} Отровно докосване#↓ {{Speed}} -0.1 скорост#{{BlackHeart}} Отровените врагове могат да пуснат черно сърце"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Показва всички икони на картата#Не показва цялата карта", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Летене за сегашната стая#{{MomsHeart}} Убива \"Мама\" и \"Сърцето на мама\"#{{Warning}} Убива теб, ако я използваш срещу \"Сатаната\"!", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Създава едно ако на пода#Отблъсква близки чудовища#Може да бъде поставено до яма и да бъде гръмнато, за да стане мост", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Изстрелва кръг от 10 сълзи около играча#Всяка сълза е с ефекти и щети като на играча, + още 25 щети", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Вкаменява всички чудовища в стаята за 4 секунди", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Прави експлозия около играча за 40 щети", -- Kamikaze!
	-- Full old Desc: "Прави експлозия около играча за 40 щети#Играчът също поема щети от експлозията"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Плаши всички чудовища в стаята за 5 секунди", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "{{Poison}} Отровна бомба, която може да бъде изстреляна като сълза в избрана посока", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Телепортира те в случайна стая (без стаята I AM ERROR)", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% шанс за награда при минаване на стая#По-висок шанс за победа на машини", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 късмет#+8% шанс за награда при минаване на стая#По-висок шанс за победа на машини"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} Изстрелва ракета, която се приземява след 1.5 секунди в посочена от вас точка#Нанася 20х щети", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "{{Collectible119}} Изстрелва една сярна лазерна атака в избрана посока", -- Shoop da Whoop!
	-- Full old Desc: "{{Collectible119}} Изстрелва една сярна лазерна атака в избрана посока"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "↓ {{Tears}} Период между сълзите x 2.5", -- Dr. Fetus
	-- Full old Desc: "{{Bomb}} Изстрелваш бомби вместо сълзи#Бомбите правят по 5x щети + 30#↓ {{Tears}} Период между сълзите x 2.5"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Магнитно привличане за предмети по пода", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Показва стаите на картата за целия етаж#Не показва иконите на картата", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Пуска локва от лимонада на пода#Локвата нанася 24 щети в секунда при докосване", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Орбитална муха на средна дистанция от играча", -- Distant Admiration
	-- Full old Desc: "Орбитална муха на средна дистанция от играча#Нанася 75 щети в секунда при докосване"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Позволява на играча да минава през дупки от 1 квадратче", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HalfHeart}} Лекува половин сърце на всеки 13 убити чудовища", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Активните предмети могат да бъдат заредени два пъти", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} 50% намаление на всички цени в магазините#С две копия от този предмет всички цени стават 0", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Създава 6 трол бомби в стаята", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Забавя чудовищата за 8 секунди", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Спътник с нормални сълзи", -- Sister Maggy
	-- Full old Desc: "Спътник с нормални сълзи#Прави 3.5 щети на сълза"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Вместо сълзите стреляш с лазер", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} Сълзите се зареждат чрез задържане на копчето за стрелба#↑ {{Damage}} Според заряда нанасят от 10% до 400% щети#↓ {{Tears}} Намалена честота на стреляне", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "Смаляваш се", -- Mini Mush
	-- Full old Desc: "↑ {{Speed}} +0.3 скорост#↓ {{Range}} -4.25 обхват на сълзите#↑ +1.5 височина на сълзите#(общо става малко по-голям обхват)#Смаляваш се"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "Ниво 1: Орбитал#Ниво 2: Стрелящ орбитал#Ниво 3: Месно момче ниво 1#Ниво 4: Месно момче ниво 2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} Кръводарителски машини и {{Collectible135}} Кръвна банка дават повече монети", -- PHD
	-- Full old Desc: "{{Pill}} Всички негативни хапчета стават позитивни#При взимане създава 1 хапче#{{Heart}} Лекува 2 червени сърца#{{BloodDonationMachine}} Кръводарителски машини и {{Collectible135}} Кръвна банка дават повече монети"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Разкрива и отваря входовете на тайните стаи", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "{{AngelDevilChance}} +17.5% шанс за дяволска/ангелска стая", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 духовно сърце#Голяма вероятност босът на този етаж да е конник#{{AngelDevilChance}} +17.5% шанс за дяволска/ангелска стая"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "↓ Отнема всички червени сърца без едно#{{Warning}} На герои, които не могат да имат червени сърца, отнема духовните/черните", -- Dead Cat
	-- Full old Desc: "↑ Дава 9 живота#↓ Отнема всички червени сърца без едно#{{Warning}} На герои, които не могат да имат червени сърца, отнема духовните/черните#Прераждаш се с 1 сърце"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "{{SoulHeart}} +1 духовно сърце#↑ {{Damage}} +0.7 щети#↓ {{Speed}} -0.18 скорост#40 щети в секунда при докосване#Можете да чупите скали, като ги тъпчете"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "При използване отваря люк на земята към следващия етаж#{{LadderRoom}} 10% шанс да отвори люк със стълба към тайник", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Монстро пада върху произволно чудовище и нанася 120 щети#{{Warning}} Ако няма чудовища, Монстро пада върху играча", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Спътник, който лети в посока на стрелбата", -- Little Chubby
	-- Full old Desc: "Спътник, който лети в посока на стрелбата#Нанася 52.5 щети в секунда на докоснатите врагове"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Разкрива какви типове са съседните стаи#{{SecretRoom}} Разкрива съседни тайни и супер тайни стаи", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Timer}} Ефектът продължава 6.5 секунди", -- The Gamekid
	-- Full old Desc: "Неуязвимост#{{Fear}} Плаши всички чудовища в стаята#40 щети в секунда при докосване#{{HalfHeart}} Всеки 2 убити чудовища лекуват половин червено сърце#{{Timer}} Ефектът продължава 6.5 секунди"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Пуска произволна монета на всеки 2 стаи", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Спътник с лазерни изстрели", -- Robo-Baby
	-- Full old Desc: "Спътник с лазерни изстрели#Прави 3.5 щети на изстрел"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Пуска половин сърце на всеки 3 стаи", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Спътник със забавящи сълзи", -- Little Gish
	-- Full old Desc: "{{Slow}} Спътник със забавящи сълзи#Прави 3.5 щети на сълза"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Спътник със самонасочващи се сълзи", -- Little Steven
	-- Full old Desc: "Спътник със самонасочващи се сълзи#Прави 3.5 щети на сълза"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Сълзите се разделят на две при допир#Всяка половина нанася половин щети", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Променя всички предмети на пиедестали в стаята", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Летене#Тялото ви се отделя като самостоятелен спътник#Нанася 82.5 щети в секунда при докосване"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Всяка щета отнема само половин сърце", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ {{Damage}} +0.04 щети за всяка твоя {{Coin}}монета", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} Пърди отровен облак газ#Отровата нанася щетата на играча общо 6 пъти", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Ускорява всички други орбитали", -- Guardian Angel
	-- Full old Desc: "Орбитален спътник#Ускорява всички други орбитали#Блокира изстрели#Нанася 105 щети в секунда при докосване"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Автоматично стрелящо бебе", -- Demon Baby
	-- Full old Desc: "Автоматично стрелящо бебе#Има малък радиус на действие#Прави 3 щети на сълза"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Вместо сълзи държите и стреляте нож#Нанася 2х щетите на играча при държане и 6х при максимално зареден изстрел", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "Автоматично дава +1 заряд след използване на активния предмет#{{Battery}} При взимане зарежда напълно текущия активен предмет", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Атакува чудовищата, след като някое ти нанесе щета", -- Dead Bird
	-- Full old Desc: "Атакува чудовищата, след като някое ти нанесе щета#Нанася 4 щети в секунда при докосване"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Ако имате 1/2 или по-малко червени сърца:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Ако имате 1/2 или по-малко червени сърца:#↑ {{Damage}} +1.5 щети#↑ {{Speed}} +0.3 скорост"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Дава произволен спътник за стаята", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Ефект от произволен активен предмет", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "{{Bomb}} +5 бомби", -- Bobby-Bomb
	-- Full old Desc: "Самонасочващи се бомби#{{Bomb}} +5 бомби"
	-- English: "Homing bombs"

	[C_ID .. 126] = "#↑ {{Damage}} +1.2 щети за стаята#{{Warning}} Нанася 1 сърце щета#Ако има червени сърца, първо премахва тях", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Текущият етаж се рестартира и се регенерира", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Орбитална муха на голяма дистанция от играча", -- Forever Alone
	-- Full old Desc: "Орбитална муха на голяма дистанция от играча#Нанася 30 щети в секунда при докосване"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Пасивно получаваш летене#{{Speed}} Скоростта ти става 1.5, ако е била по-малко#При използване, се блъска в чудовища в посоката на движение на играча", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Пуска 1 произволна бомба на всеки 2-3 стаи", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} Колкото по-дълго лети сълзата, толкова повече щети нанася", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "Когато се използва маха 1 контейнер за Червено сърце и ти дава 3 духовни сърца", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "Появяват се повече сандъци", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Преносима банка с кръв#Дава 1 монета за половин сърце", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Привлича чудовищата#След 5 секунди той избухва", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "+5 Бомби", -- Remote Detonator
	-- Full old Desc: "Бомбите експлодират при използване на детонатора#+5 Бомби"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "Позволява ти да носиш 2 дрънкулки", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "+5 Бомби", -- Bob's Curse
	-- Full old Desc: "Отровни бомби#+5 Бомби"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "Ако сте поели щети и сте останали на половин сърце, дава 1 духовно сърце#(веднъж на стая)", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "Събира монети и дава предмети за тях", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Унищожава камъни#Може да направи дупка в Тайната стая!", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "↓ {{Tears}} По-малко сълзи", -- Ipecac
	-- Full old Desc: "Сълзите летят в дъга и избухват#Ефектът от отравяне#↑ {{Damage}} +40 щета#↓ {{Tears}} По-малко сълзи"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "1/6 шанс да призове муха когато сълзите докоснат чудовище", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "↓ {{Tears}} Период между сълзите x 2", -- Technology 2
	-- Full old Desc: "Безкраен лазер#↓ {{Damage}} -35% Щети#↓ {{Tears}} Период между сълзите x 2"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "Лети из стаята", -- The Peeper
	-- Full old Desc: "Лети из стаята#Нанася щети при контакт"
	-- English: "Floats around the room"

	[C_ID .. 156] = "+1 заряд на активният предмет когато те ударят", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ {{Damage}} +Щета всеки път щом те ударят#Ефектът се прилага до 6 пъти на етаж#Продължава до края на етажа", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Показва цялата Карта#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Показва цялата Карта#Дава духовно сърце или произволна карта"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Когато се използа пуска лъчове светлина върху чудовищата и прави много щети", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "След като умреш се прераждаш като ??? (Синьото бебе)", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Бебе което стреля спектрални сълзи", -- Ghost Baby
	-- Full old Desc: "Бебе което стреля спектрални сълзи"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Стреля сини пламъци", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Променя пикъповете в стаята", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Изтрелва V-образни сълзи", -- Harlequin Baby
	-- Full old Desc: "Изтрелва V-образни сълзи"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Сълзите се заменят с ракети!", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Крак който настъпва чудовищата в стаята", -- Daddy Longlegs
	-- Full old Desc: "Крак който настъпва чудовищата в стаята"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "забавя чудовищата за 4 секунди", -- Spider Butt
	-- Full old Desc: "забавя чудовищата за 4 секунди#Прави по 10 щети на всяко чудовище"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Бебе което стреля различен цвят сълзи с различни ефекти", -- Rainbow Baby
	-- Full old Desc: "Бебе което стреля различен цвят сълзи с различни ефекти"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Отваря абсолютно всички врати в стаята", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Преносима игрална машина", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Ако вземете щети, тя ще се счупи #Ще се появи локва на пода, която причинява щети на чудовищата", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Когато поемете щети, вие отравяте чудовищата с отровен газ", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Докато държиш предметът:#Получаваш летене#{{Speed}} Скоростта ти става 1.5, ако е по-малко#При използване, атакува чудовища в избраната посока", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "Нападателна топка от косми#Лети около вас и расте, когато убива врагове", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Копира огледално движенията ти#Стреля към играча", -- Abel
	-- Full old Desc: "Копира огледално движенията ти#Стреля към играча"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Сълзи със случаен ефект", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Дава по 1 пикъп на земята от всеки вид", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Получаваш повече неща от кутиите", -- Mom's Key
	-- Full old Desc: "2 Ключа#Получаваш повече неща от кутиите"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Превръща чудовищата в злато като ги докоснеш#Когато убиеш златно чудовища то пуска монети", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Удвоява всички пикъпи", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "50% шанс да пуснеш случаен пикъп като те одарят", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "Ако активният предмет е празен можете да го използвате за 2 сърца", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "Ниво1: орбитал#Ниво2: стрелящ орбитал#Ниво3: Момиче лепенка#Ниво4: Момиче лепенка ниво2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "Повече Чудовища шампиони се появяват", -- Champion Belt
	-- Full old Desc: "↑ {{Damage}} 1 Щети#Повече Чудовища шампиони се появяват"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "Взривът зашеметява и нанася щети на всички чудовища в стаята", -- Butt Bombs
	-- Full old Desc: "5 Бомби#Взривът зашеметява и нанася щети на всички чудовища в стаята"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Неуязвимост, ако стоите неподвижно по-дълго от секунда", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% шанс да се преродиш след смъртта", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Когато такава сълза и вражеска сълза се сблъскат, и двете ще изчезнат", -- Lost Contact
	-- Full old Desc: "Сълзите ще имат щит, блокиращ другите сълзи#Когато такава сълза и вражеска сълза се сблъскат, и двете ще изчезнат#↓ {{Shotspeed}} -0.15 скорост на стрелбата"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Когато поемете щети, започвате да оставяте отровна следа в стаята", -- Anemic
	-- Full old Desc: "↑ {{Range}} +5 Обхват на сълзите#Когато поемете щети, започвате да оставяте отровна следа в стаята"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "↑ 1 Червено сърце", -- Placenta
	-- Full old Desc: "Много бавна регенерация#↑ 1 Червено сърце"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "+5 Бомби", -- Sad Bombs
	-- Full old Desc: "Бомбата избухва, пускайки сълзи в различни посоки#+5 Бомби#Сълзите копират ефекта на сълзите на играча"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Отскачащи сълзи", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "↑ {{Tears}} -2 период между сълзите", -- Anti-Gravity
	-- Full old Desc: "Сълзите висят във въздуха, докато стреляте#↑ {{Tears}} -2 период между сълзите"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "+5 Бомби", -- Pyromaniac
	-- Full old Desc: "Експлозиите ви лекуват!#+5 Бомби"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 225] = "Шанс за създаване на Духовно сърце / Черно сърце при поемане на щети", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "Когато поемате щети пускате 1 или 2 монети", -- Piggy Bank
	-- Full old Desc: "+3 Монети#Когато поемате щети пускате 1 или 2 монети"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "Шанс да изплаши чудовищата", -- Mom's Perfume
	-- Full old Desc: "↑ {{Tears}} 1 скорост на стреляне#Шанс да изплаши чудовищата"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "Атаката е подобна на атаката на Монстро", -- Monstro's Lung
	-- Full old Desc: "Сълзите зареждат и стрелят в насипно състояние#Атаката е подобна на атаката на Монстро#↓ {{Tears}} 4.3x период между сълзите"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "+6 Черни сърца", -- Abaddon
	-- Full old Desc: "↑ {{Damage}} 1.5 Щети#↑ {{Speed}} 0.2 скорост#Шанс да изплаши чудовищата#Маха всички червени сърца#+6 Черни сърца"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "Оставяте слуз на пода която забавя чудовищата", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% шанс да изстреляте забавящи сълзи#{{Luck}} 100% шанс при 18 късмет#Оставяте слуз на пода която забавя чудовищата"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 234] = "Ще получите съюзнически паяк за всяко убито чудовище", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Превръща врага в ако при докосване", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 241] = "Всички пикъпове, които падат след почистване на стаята, се дублират", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "Шанс за блокиране на летящи сълзи", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Блокиращ щит на сълзите", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Лазерна атака#Лазерът има произволни ефекти", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Двойна стрелба!", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "Показва тайните стаи", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Спътниците нанасят повече щети", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Мухите и паяците, които са от твоя страна, нанасят двойни щети", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "След боса има два Предмета от които да избирате#Можете да вземете само един", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "Всички бомби за пикап стават двойни", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Превръща всички хапчета в карти", -- Starter Deck
	-- Full old Desc: "Можеш да носиш по две карти#Превръща всички хапчета в карти"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Превръща всички карти в хапчета", -- Little Baggy
	-- Full old Desc: "Може да носиш по две хапчета#Превръща всички карти в хапчета"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "+5 Бомби", -- Hot Bombs
	-- Full old Desc: "Изгарящи бомби, оставящи огън след експлозия#+5 Бомби"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 258] = "С всеки етаж той променя произволно всички предмети, с които разполагате", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "Имунитет срещу проклятия", -- Black Candle
	-- Full old Desc: "Имунитет срещу проклятия#+1 Черно Сърце"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "Колкото по-далеч лети сълзата, толкова по-малък е бонусът", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} +100% бонус щети#Колкото по-далеч лети сълзата, толкова по-малък е бонусът"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Когато останат 1,5 сърца, нанася щети на всички в стаята", -- Missing Page 2
	-- Full old Desc: "+1 Черно Сърце#Когато останат 1,5 сърца, нанася щети на всички в стаята"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Когато ви нанесът щета, започва да атакува враговете", -- Smart Fly
	-- Full old Desc: "Орбитална муха#Когато ви нанесът щета, започва да атакува враговете"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "Спътник блокиращ щети#След блокиране има шанс да нанесе щети на всички врагове в стаята", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Оставя забавяща слуз по пътя ви#Може да изхвърли съюзни паяци, след изчистване на стая", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Стреля лазери", -- Robo-Baby 2.0
	-- Full old Desc: "Стреля лазери#Стреля в посоката, в която стреляте вие"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Спалнва съюзни мухи, когато стреляте", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Оставя следи от кръв по пътя ви, които нанасят щети на враговете", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Запълва половин червено сърце, когато убие някой", -- Leech
	-- Full old Desc: "Запълва половин червено сърце, когато убие някой"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Дава произволни пикъпи, през няколко стаи", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Съюзническа експлодираща муха", -- BBF
	-- Full old Desc: "Съюзническа експлодираща муха"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Спътник, управляван от вашата стрелба#Експлодира при контакт", -- Bob's Brain
	-- Full old Desc: "Спътник, управляван от вашата стрелба#Експлодира при контакт"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Орбитална муха, която спалнва орбитални мухи, когато ви нанесът щети", -- Best Bud
	-- Full old Desc: "Орбитална муха, която спалнва орбитални мухи, когато ви нанесът щети"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Collectible118}} Стреля зареждащ кръвен лазер", -- Lil Brimstone
	-- Full old Desc: "{{Collectible118}} Стреля зареждащ кръвен лазер"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Ставате неуязвим#Ако сърцето понесе щета, понасяте и вие", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Спътник, който атакува враговете", -- Lil Haunt
	-- Full old Desc: "Спътник, който атакува враговете"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "Спътник, който събира червени сърца и дава в замяна Духовни сърца", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Голяма орбитална муха", -- Big Fan
	-- Full old Desc: "Голяма орбитална муха#Блокира снаряди"
	-- English: "Large orbital"

	[C_ID .. 280] = "Спътник, който създава съюзнически мухи", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Отклонява вниманието на враговете", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Позволява ви да скачате", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Ефект на D4, D6 и D20:#Променя всички елементи в стаята#Променя артефактите на педесталите#Променя артефактите, които носите", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Когато се активира, произволно променя артефактите, носени от вашия герой", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Променя всички врагове в стаята с произволни", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Копира ефекта на картата / руната, която държите, когато се използва", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Изстрелва червени пламъци", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "Може да съхранява до 4 червени сърца", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Когато се използва, превръща всички врагове в изпражнения#Не работи на Boss-oве", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "Атака с кръвен лазер в 4 посоки", -- Head of Krampus
	-- Full old Desc: "Атака с кръвен лазер в 4 посоки"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Пърди и отблъсква враговете при използване", -- Butter Bean
	-- Full old Desc: "Пърди и отблъсква враговете при използване"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Когато се използва, той нанася щети на всички врагове в стаята#Разходи за използване - 1 монета", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Превръща 2 Духовни сърца в 1 Червено сърце", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "↑ {{Speed}} Ставате по-бързи в стая с врагове#{{Collectible77}} При пълно ускорение (2.0 скорост) ставате неуязвими#Ефектът се губи за стаята няколко секунди по-късно", -- Taurus
	-- Full old Desc: "↓ {{Speed}} -0.3 Speed down#↑ {{Speed}} Ставате по-бързи в стая с врагове#{{Collectible77}} При пълно ускорение (2.0 скорост) ставате неуязвими#Ефектът се губи за стаята няколко секунди по-късно"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Сблъскването с врагове им нанася щети", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 скорост#Сблъскването с врагове им нанася щети"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Когато понасяте щети, всякакви допълнителни щети в стаята ще отнемат половин сърце", -- Cancer
	-- Full old Desc: "+3 Духовни сърца#Когато понасяте щети, всякакви допълнителни щети в стаята ще отнемат половин сърце"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 303] = "Шанс за временна неуязвимост след поемане на щети#100% шанс с късмет +10", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Балансира вашите параметри!#Всички следващи подобрения ще бъдат разпределени между всички ваши параметри", -- Libra
	-- Full old Desc: "+6 монети / ключове / бомби#Балансира вашите параметри!#Всички следващи подобрения ще бъдат разпределени между всички ваши параметри"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Героят оставя следа от сълзи зад себе си, причинявайки щети на враговете", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "След смъртта ще се появиш като Черен Юда#↑ {{Damage}} (той има щети x 2) ", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 313] = "Блокира първите нанесени щети във всяка стая", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Можете да чупите скали, като ги тъпчете", -- Thunder Thighs
	-- Full old Desc: "↑ 1 Червено сърце#↓ {{Speed}} -0.4 скорост#Можете да чупите скали, като ги тъпчете"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Магнитни сълзи#Привлича предмети и врагове", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "Ако нанесете щети по време на зареждане, има шанс да се телепортирате в произволна стая", -- Cursed Eye
	-- Full old Desc: "Зареждаща се вълна от сълзи#Ако нанесете щети по време на зареждане, има шанс да се телепортирате в произволна стая"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Сълзите оставят отровен басейн", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Брат атакуващ врагове в близък бой", -- Gemini
	-- Full old Desc: "Брат атакуващ врагове в близък бой"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Бавно лети из стаята#Стреля сълзи към вашата позиция#{{Damage}} Щетата им е равна на вашата", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Контролираща се муха, която уврежда враговете", -- ???'s Only Friend
	-- Full old Desc: "Контролираща се муха, която уврежда враговете"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Верига + топка", -- Samson's Chains
	-- Full old Desc: "Верига + топка#Може да чупи камъни, да наранява врагове и да блокира снаряди"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Копира ефекта на сълзите на друг спътник", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Когато се използва, пуска 8 сълзи около героя#Зарежда се докато стреляте", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Телепортира се до:#- Тайната стая#- Стаята съм - ГРЕШКА#- Стаята с предмети", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Отрязва главата ти#Главата стои неподвижно#Ти контролираш тялото си", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Задръжте интервал, докато лентата за зареждане се изпразни за неуязвимост# !!! Не го дръжте твърде дълго или ще поемете щети!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Дава кратка неуязвимост, ако останете на 1/2 сърце#Позволява ви да преминете към нивото Съндък", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Нанася щети на всички врагове в стаята, ако остане 1/2 сърце#Позволява ви да преминете към нивото на Тъмната стая", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Голяма управляема от вас сълза", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "↑ 0.8 Височина на сълзите", -- Godhead
	-- Full old Desc: "Насочване на сълзите#Имате аура, която нанася щети#↑ {{Damage}} +0.5 Щети#↑ {{Range}} 1.2 Обхват на сълзите#↓ {{Tears}} 0.3 скорост на стреляне#↓ {{Shotspeed}} -0.3 скорост на сълзите#↑ 0.8 Височина на сълзите"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "След смъртта ти ще се явиш като Лазар и ще получиш неговия предмет", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Отключва напълно картата на всички етажи", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Дава аура, която отблъсква враговете и снарядите", -- The Soul
	-- Full old Desc: "+2 Духовни сърца#Дава аура, която отблъсква враговете и снарядите"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Забавя враговете в произволни стаи#(по-малко вероятно е да ги ускори)", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Замразява враговете#Може да вземе недостъпни предмети", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Удвоява всички артефакти/предмети в стаята", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "Копира ефекта на хапчето, което държите", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "Когато влезеъе в стая, всички враговете се натравят", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Нанася щети и отравя близките врагове#Създава взривна вълна#Тази вълна може да отвори тайни стаи", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "Намалява здравето до 1/2 сърце при употреба#Пуска огромна, прозрачна спектрална сълза ((DAMAGE + 1) X 10)", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Бомбите експлодират в кръстовидна форма", -- Bomber Boy
	-- Full old Desc: "+5 бомби#Бомбите експлодират в кръстовидна форма"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Активният предмет вече има двоен ефект", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Дублира вашите спътници само за стаята в която сте", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Спектрални слези", -- The Wiz
	-- Full old Desc: "Стреляте диагонално с две сълзи като хапче R U A WIZARD#Спектрални слези"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Увеличава отблъскването на сълзите", -- 8 Inch Nails
	-- Full old Desc: "↑ {{Damage}} +1.5 Щети#Увеличава отблъскването на сълзите"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Копира атаката, статовете и ефектите на вашия герой", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Стреля сълзи със същите щети като вашия герой", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Дава произволен елемент на през няколко стаи", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "След блокиране има шанс да създадете вечно сърце", -- Sworn Protector
	-- Full old Desc: "Нанася щети при контакт#Блокира и привлича снаряди#След блокиране има шанс да създадете вечно сърце"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Орбитална муха", -- Friend Zone
	-- Full old Desc: "Орбитална муха#Нанася щети при допир"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Движи се по стени и препятствие", -- Lost Fly
	-- Full old Desc: "Движи се по стени и препятствие# Нанася щети при контакт"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Бомбите се придържат към врага#Когато бъде убит с бомба, съюзнически паяк се хвърля", -- Sticky Bombs
	-- Full old Desc: "+5 Бомби#Бомбите се придържат към врага#Когато бъде убит с бомба, съюзнически паяк се хвърля"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Стрелянето в една посока увеличава скоростта на стрелба", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 371] = "6 трол бомби се хвърлят, когато понесете щети", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Придружител на батерията#Създава батерия на случаен принцип или замразява всички врагове за известно време#Шанс да получите +1 заряд към вашия активен предмет", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ {{Damage}} +25% Щети за всяка сълза, която удари успешно противник (макс. +100%)", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 375] = "Случайна възможност за избягване на снаряд#Имунитет от експлозии (включително Майчин крак)", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 377] = "Вражеските паяци стават неутрални", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "След стрелба непрекъснато в продължение на 3 секунди, създава Butt Бомба под вас", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Вратите изискват монети вместо ключове", -- Pay To Play
	-- Full old Desc: "+5 Монети#Вратите изискват монети вместо ключове"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "В началото на следващото ти бягане ще получиш произволен предмет", -- Eden's Blessing
	-- Full old Desc: "↑ {{Tears}} 0.7 Бързина на сълзите#В началото на следващото ти бягане ще получиш произволен предмет"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Може да бъде хвърлен срещу враг, за да го хване#След следващото хвърляне заловеното същество ще се появи като съюзническо#Ще бъде с вас, докато умре", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Детонира всяка сълза в стаята#Всяка сълза се разделя на 6", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "Зарежда и атакува врагове със заряд, нанасяйки щети при контакт", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Вдига легналите монети. Всяка 6 монета, която вземе, увеличава нивото си (UR4 изисква 12 монети)#UR2: може да даде произволен предмет за вдигане#UR3: стреля в същата посока като вас#UR4: гони врагове, оставя бомби#След получаване на UR4 продължава да събира монети и дава предмети за тях", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Променя всички камъни и предмети в стаята на произволни (купчини, саксии, тротил, каменни блокове и др.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Създава голяма аура, която забавя враговете", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Събира ключове, в замяна дава произволни сандъци", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "Създава произволна руна на всеки 5 стаи", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Придружител, атаки със самонасочващи се сълзи с увеличени щети", -- Seraphim
	-- Full old Desc: "Придружител, атаки със самонасочващи се сълзи с увеличени щети"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "Когато понесете щети, всички врагове в стаята са очаровани", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Дава ви ефект на произволен зодиакален знак#Ефектът се променя с всеки етаж", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "Случайни шансове да отровите враг#Отравяне от контактни щети#Отровени врагове имат шанс да пуснат черно сърце", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ {{Range}} 3.15 Обхват на сълзите", -- Marked
	-- Full old Desc: "Стреляте сълзи автоматично по посока на маркер, който контролирате#↑ {{Tears}} 0.7 скорост на стреляне#↑ 0.3 Височина на сълзите#↑ {{Range}} 3.15 Обхват на сълзите"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "Атакувате с зареждащи лазерни пръстени", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Създава портали, между, които можете бързо да се телепортирате", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ 0.5 Височина на сълзите", -- Tractor Beam
	-- Full old Desc: "Сълзите ви летят стриктно по лъча светлина, без да се отклоняват дори когато се движите#↑ {{Tears}} 0.5 скорост на стреляне#↑ {{Range}} 5.25 Обхват на сълзите#↑ {{Shotspeed}} 0.16 скорост на сълзите#↑ 0.5 Височина на сълзите"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Случайна възможност за свиване на враг#По-малките врагове може да бъдат убити чрез смачкване", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = "Враговете, убити от пръстена, имат шанс да пуснат Черно сърце", -- Maw of the Void
	-- Full old Desc: "↑ {{Damage}} 1.0 Щети#↑ 0.5 Височина на сълзите#{{Chargeable}} След продължителна стрелба в продължение на 3 секунди на главата ще се появи червен кръст, след спиране на стрелбата ще се появи черен пръстен, причиняващ големи щети#Враговете, убити от пръстена, имат шанс да пуснат Черно сърце"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "Пред вас се появява копие, което нанася X 2 щети", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "Сълзите със случаен шанс могат да залепнат за врага, след което започват да растат по размер, докато не избухнат", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Сега пиедесталите ще бъдат избирани от произволни групи от предмети", -- Chaos
	-- Full old Desc: "Сега пиедесталите ще бъдат избирани от произволни групи от предмети# Също така създава 1-6 предмета за взимане"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Показва здравето на враговете и щетите, които нанасяте#Налага случаен ефект върху врага при контакт#Може да създаде съюзник паяк или батерия", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "След блокиране може да отдели отровни газове", -- Farting Baby
	-- Full old Desc: "Блокира снаряди#След блокиране може да отдели отровни газове#Газовете могат да очароват с определен шанс"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Лети из стаята и прилага случайни ефекти върху враговете при контакт", -- GB Bug
	-- Full old Desc: "Лети из стаята и прилага случайни ефекти върху враговете при контакт"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Случайно променя вашите параметри#Засяга само щети, скороста на сълзите, обхват на сълзите и скорост", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "Увеличава една от характеристиките, в зависимост от цвета на аурата#При получаване на щети в съседната стая ще се появи произволна аура#Червено = ↑ {{Damage}} +4.0 щети # Синьо = ↑ {{Tears}} -4 период между сълзите#Жълто = ↑ {{Speed}} +0,5 скорост#Оранжево = ↑ {{Range}} +7,5 обхват на сълзите", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Когато нанесете щети, ще се появи черен пръстен, причиняващ големи щети#Враговете, убити от пръстена, имат шанс да пуснат Черното сърце", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "Ако нямате останали червени сърца, дава летене и кратка неуязвимост при поемане на щети", -- Empty Vessel
	-- Full old Desc: "+2 Черни сърца#Ако нямате останали червени сърца, дава летене и кратка неуязвимост при поемане на щети"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "За всяко убийство дава ↑ {{Damage}} +0,5 щети#Макс. +5 щети за 10 убийства#Действа само в стаята", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "След като нанесете достатъчно щети, вие постоянно ще получите дяволски спътник#Възможно е да получите няколко спътници", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "След като вземете достатъчно сърца, ще получите постоянно ангелски спътник#Възможно е да получите няколко спътници", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "2 елемента се появяват в златни стаи#Можете да вземете само един", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "↑ {{Damage}} Щети X 2, ако нямате нито едно празно червено сърце#{VAR:EFFECTLIST}", -- Crown Of Light
	-- Full old Desc: "+2 Духовни сърца#↑ {{Damage}} Щети X 2, ако нямате нито едно празно червено сърце#При поемане на щети бонусът се нулира и опреснява при преместване в друга стая"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Можете да носите 2 карти / руни / хапчета със себе си", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Лети из стаята, има аура, която нанася щети на врагове#↑ {{Damage}} +50% щета, докато си в аурата", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Всяка сълза има произволен ефект", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Телепортира се в произволна стая, в която все още не сте били", -- Teleport 2.0
	-- Full old Desc: "Телепортира се в произволна стая, в която все още не сте били#Последователност: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}>{{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Оставяте черна следа на пода#Ако образувате кръг, ще създаде пентаграма, която нанася щети на враговете", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "Прилага чар на близки врагове, когато се активира", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Ще ви отведе до предишната стая#Всичко наоколо възстановява първоначалното си състояние, което са имали, когато сте били в предишната стая", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Голям кръг от светлина, нанасящ щети#Шанс за отклоняване на вражески снаряди", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Често ще намирате торбички с предмети", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Фенерче, неговата светлина забавя враговете и техните снаряди", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Създава цев от динамит#Цевта може да се движи из стаята#Ако се използва повторно в същата стая, взривява старата цев и създава нова", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "Случайни шансове за хвърляне на стотинка след удряне на враг", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Стреля по близките врагове", -- Papa Fly
	-- Full old Desc: "Повтаря вашите движения с 3 секунди закъснение#Стреля по близките врагове"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Сълзите, преминали през него, се дублират и нанасят повече щети", -- Multidimensional Baby
	-- Full old Desc: "Повтаря вашите движения с 3 секунди закъснение#Сълзите, преминали през него, се дублират и нанасят повече щети"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 433] = "Когато нанесете щети, ще се появи черна съюзническа ларва, която атакува врагове", -- My Shadow
	-- Full old Desc: "Когато нанесете щети, ще се появи черна съюзническа ларва, която атакува врагове#Остава с вас, докато умре"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "За всяко убийство в банката ще се появи една съюзническа муха#Можете да натрупате общо 20 мухи#Използването на банката с мухи ще освободи всички мухи", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Спътник, стреля в 4 посоки", -- Lil Loki
	-- Full old Desc: "Спътник, стреля в 4 посоки"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} След като понесете щети, вие получавате по-бърза стрелба на сълзите за останалата част от стаята", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Възстановява преди това убитите врагове в стаята#Позволява ви да получите отново наградата за освобождаване на стаята", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 439] = "↑ {{Luck}} +1 късмет", -- Mom's Box
	-- Full old Desc: "Създава произволна дрънкулка на пода#Докато държите предмета:#Удвоява ефекта от дрънкулката#↑ {{Luck}} +1 късмет"
	-- English: "{{Trinket}} Doubles trinket effects"

	[C_ID .. 440] = " ↓ 15 обхват на стрелба ", -- Kidney Stone
	-- Full old Desc: "В случаен момент персонажът ще спре да стреля, по това време можете да заредите серия от атаки#Характерът ще изплюе камъка от бъбреците, причинявайки големи щети, а след това ще пусне вълна от сълзи с много висока скорост # ↓ 0,2 скорост # ↓ 15 обхват на стрелба # ↑ 2,0 Височина на сълзите"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "Когато се използва, атакува с мощен кървав поток, като#Атаката на Мега Сатаната продължава 15 секунди#Можете да се движите между стаите, продължавайки да стреляте", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "Ако имате точно 1 червено сърце:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "Ако имате точно 1 червено сърце:#↑ {{Range}} 1,5 обхват на сълзите#↑ {{Tears}} 0,75 скорост на стреляне#↑ {{Shotspeed}} 0,2 скорост на сълзите#Не работи с Lost"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "На всеки 15 изстрела ще пускате голямо разпръскване на сълзи#Всяка такава сълза ще нанася двойна щета", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 446] = "По време на стрелба се появява зелена аура, която отравя враговете", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Докато стреляте, можете да създадете облак с щети с някакъв шанс#Може да се премести, като се стреля по него", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Когато получите щета, има шанс да получите +5 до обхвата на атака и възможността да оставите кървава следа зад себе си, която нанася щети на врагове#Действа само в стаята", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "Снарядът на врага може да бъде отблъснат", -- Metal Plate
	-- Full old Desc: "+1 Духовно сърце#Снарядът на врага може да бъде отблъснат"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Сълзите имат малък шанс да превърнат врага в злато", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "Усилва ефекта на повечето карти, руни и подобни предмети", -- Tarot Cloth
	-- Full old Desc: "Дава произволна карта / руна#Усилва ефекта на повечето карти, руни и подобни предмети"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Когато нанесете щети, ще пуснете 10 сълзи около себе си#Сълзите са с увеличени щети", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "↑ 1,5 обхват на стрелба", -- Compound Fracture
	-- Full old Desc: "Стреляте кости#Костите се разделят на малки парчета при удар#↑ 1,5 обхват на стрелба"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Може да носи две карти / хапчета / руни#Дава произволна карта / хапче / руна", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 457] = "Има шанс да блокира щети", -- Cone Head
	-- Full old Desc: "+1 Духовно сърце#Има шанс да блокира щети"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "Дава произволна дрънкулка", -- Belly Button
	-- Full old Desc: "Дава произволна дрънкулка#+ допълнителен слот за дрънкулки"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "Шанс за стрелба на сополи", -- Sinus Infection
	-- Full old Desc: "Шанс за стрелба на сополи#Сополите се придържат към врага и му нанасят щети, докато той умре"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "Шанс да зашемети враговете", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 462] = "След първия удар, сълзата удвоява щетите си и става самонасочваща се", -- Eye of Belial
	-- Full old Desc: "↑ {{Range}} +1.5 Обхват на сълзите#↑ +1 Височина на сълзите#Сълзите пронизват враговете#След първия удар, сълзата удвоява щетите си и става самонасочваща се"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Киселинна сълза може да разбие камък или да отвори тайна стая", -- Sulfuric Acid
	-- Full old Desc: "↑ {{Damage}} 0.3 щети#Киселинна сълза може да разбие камък или да отвори тайна стая"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Шампионски чудовища пускат по-добри предмети", -- Glyph of Balance
	-- Full old Desc: "+2 Духовни сърца#Шампионски чудовища пускат по-добри предмети"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Позволява ви да стреляте по диагонал или в двете посоки, ако стреляте с аналоговия стик", -- Analog Stick
	-- Full old Desc: "↑ {{Tears}} +0.3 скорост на стреляне#Позволява ви да стреляте по диагонал или в двете посоки, ако стреляте с аналоговия стик"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "Първият враг, убит в стаята, експлодира с облак газ и отрови всички близки врагове#Отровените врагове също експлодират", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Нанася малки щети на враговете, в която посока гледа пръстът", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Оставя следа от сълзи#При контакт с враг, ще пусне Лъч Светлина с определен шанс", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Лети из стаята#Спира при стрелба", -- Hushy
	-- Full old Desc: "Лети из стаята#Нанася щети при контакт#Спира при стрелба"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Атакува също като шефа на Чудовището", -- Lil Monstro
	-- Full old Desc: "Зарежда атаката си#Атакува също като шефа на Чудовището"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Всички спътници го следват#Спира, докато стреля#Телепортира се обратно при вас, когато спрете да стреляте", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Лети много бавно в посока на огъня", -- Big Chubby
	-- Full old Desc: "Лети много бавно в посока на огъня#Нанася щети при контакт"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "Дублира 1 случаен елемент в стаята", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "При използване абсорбира всички вещи на пиедестали в стаята#Активни вещи: Активират се на момента и при всяко следващо използване#Пасивният предмет дава произволен бонус към характеристиките", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Когато се активира, всички врагове замръзват, докато не стрелнете", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "Абсорбира дрънкулката, която носите и ви дава ефекта завинаги", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Преобразува всеки предмет, взет в стаята, в съюзнически паяк / муха#Удвоява броя на наличните мухи / паяци", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "Когато се използва, той променя характера ви на случаен#Има вероятност по време на употреба последният предмет, който сте взели, да изчезне", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Засяга целия етаж#Експлодира всички обекти#{VAR:EFFECTLIST}#Отваря тайни стаи / Стая на бос Ръш / вход в Синята паст", -- Mama Mega!
	-- Full old Desc: "Засяга целия етаж#Експлодира всички обекти#Нанася 200 щети на всички врагове#Отваря тайни стаи / Стая на бос Ръш / вход в Синята паст"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Когато се използва, отблъсква враговете и създава взривна вълна", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% шанс да дублирате всички предмети в стаята#50% шанс да унищожите всички предмети в стаята и да създадете 1 монета", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Нанася щети, но без да губи здраве#Активира елементи, които работят след нанасяне на щети", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Когато се използва, той дава ефект на произволен предмет в стаята", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Ефект на случайна матрица#Можете да видите кой ефект на матрицата ще бъде следващ", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Създава 2 артефакта в стаята, в която се намирате", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "Всяко използване на хапчето отравя враговете в стаята", -- Acid Baby
	-- Full old Desc: "Дава произволно хапче на всеки две стаи#Всяко използване на хапчето отравя враговете в стаята"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Показва тайни стаи, маркирани камъни или тайни люкове под камъни", -- YO LISTEN!
	-- Full old Desc: "↑ {{Luck}} +1 Късмет#Показва тайни стаи, маркирани камъни или тайни люкове под камъни"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "За всяко празно сърце дава ↑ 0,2 щети#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "За всяко празно сърце дава ↑ 0,2 щети"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Електрически сълзи#Излъчват искри в произволна посока при удар", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Шанс да изстреля пламък вместо сълза", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 497] = "Слага камуфлаж на героя при влизане в стая, докато не започнете да стреляте", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "Ако след шефа трябва да се появи стая ангел / дявол, тогава ще се появят и двете#Можете да влезете само в една по ваш избор", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "На всеки 25 монети дава ↑ 1 Red Heart#Позволява на пазителя да има повече здраве", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Шанс да изстреляте бавна сълза, която нанася повече щети и оставя слуз на пода", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "Призовава съюзническа куполна муха за използване за атака на врагове", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Шанс за хвърляне на очарован враг при влизане в нова стая", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Удрянето на враг има шанс да причини кървене, като нанася щети, равни на 10% от здравето на врага на всеки 5 секунди", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Нанася щетите ви + 10% от макс. вражеско здраве#Засяга всички врагове в стаята#Шанс да получите половината червено сърце или половината Духовно сърце", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Придружаващ орбитален спътник, при контакт, нанася кървене, като нанася щети, равни на 10% от здравето на врага на всеки 5 секунди.", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Орбитален спътник изстрелва по посока на погледа ви на всеки 2 секунди", -- Bloodshot Eye
	-- Full old Desc: "Орбитален спътник изстрелва по посока на погледа ви на всеки 2 секунди"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Призовава съюзник - луда версия на шефа#Шефът е произволно избран#Работи в стаята", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Лети около произволен враг, докато умре", -- Angry Fly
	-- Full old Desc: "Лети около произволен враг, докато умре#Нанася щети при контакт"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Хвърля черна дупка на земята, всмуквайки всичко, вкл. врагове#Нанася щети на враговете", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = " Шанс да очарова / изплаши врага#Случайна възможност за създаване на дъгова купчина при понасяне на щети", -- Bozo
	-- Full old Desc: "↑ 0,1 щети#+ 1 Духовно сърце# Шанс да очарова / изплаши врага#Случайна възможност за създаване на дъгова купчина при понасяне на щети"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Случайно лагва враговете и техните снаряди", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Създава артефакт от басейна на стаята, в която се намирате#Шанс да получите парче въглен или кака", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Спринклер, който изстрелва сълзи в кръг#Може да копира ефектите от сълзите ви", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Премахва закъснението между употребите на бомби, за да можете да ги използвате много бързо, като бързо натиснете клавиша на бомбата", -- Fast Bombs
	-- Full old Desc: "+7 бомби#Премахва закъснението между употребите на бомби, за да можете да ги използвате много бързо, като бързо натиснете клавиша на бомбата"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Случайно дете от режим на кооперация#Има произволен ефект на сълзите#Случайно се променя на всеки етаж", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Луда версия на спътника#На всеки 10 секунди се променя произволно", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "+1 зареждане за активния предмет за всеки 15 убийства", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Прави един произволен артикул в магазина безплатен", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Замразява близки вражески снаряди за 3 секунди#След това те летят обратно#Презарежда се за 2 секунди", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Когато се използва, взима до 6 елемента#Повторното използване създава тези елементи на пода#Може да премества елементи между стаите", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Сълзите са електрически свързани заедно", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "При получаване на щети, получавате орбитален спътник#Макс. 3 сателита едновременно#Сателитите ще бъдат унищожени, ако нанесат твърде много щети", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Случайният спътник на ездач се появява и се сменя на всеки 10 секунди", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Придружителят, който изпълнява вашите поръчки:#Отваря врати и сандъци, вдига предмети, краде предмети от магазина / от дявола, атакува врагове, експлодира, активира плочи под налягане", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Сълза, прелетяла през орбитална призма, ще се разцепи на 4 подобни сълзи", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Сега сълзите имат физика като билярдни топки", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Осигурява полезна награда, ако убивате врагове в реда, в който ще бъдат маркирани", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "↓ {{Tears}} - скорост на стреляне", -- Haemolacria
	-- Full old Desc: "Сълзите летят в дъга#При сблъсък те летят на фрагменти#↑ {{Damage}} 31% щети#↓ {{Tears}} - скорост на стреляне"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Една сълза в полет се забавя#След спиране, тя избухва в малки сълзи#Можете да \"нахраните\" сълза, като стреляте по нея, тогава тя ще стане по-голяма", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Сълзите стават пронизващи лъчи светлина#(принцип, подобен на Brimstone)", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Позволява ви да носите 2 активни предмета#Сменяте ги с CTRL", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 536] = "Жертва 2 случайни спътници на играча, в замяна дава дяволски предмет за всеки", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "+1 хапче# Атакува чрез плюене на слуз на пода#Когато изядете хапче, неговият тип атака се променя", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "При получаване на щети има шанс да консумирате дрънкулка и да постигнете неговия ефект завинаги", -- Marbles
	-- Full old Desc: "Дава 3 случайни дрънкулки#При получаване на щети има шанс да консумирате дрънкулка и да постигнете неговия ефект завинаги"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Когато получите щети, се появява омагьосан враг#Колкото повече стаи преминете, без да понесете щети, толкова по-силно ще бъде омагьосаното същество", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Сълзите отскачат от пода#Удрянето на пода причинява AoE щети", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Отблъсква снаряди", -- Slipped Rib
	-- Full old Desc: "Орбитален сателит#Отблъсква снаряди"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "При получаване на щети създава Бяла купчина на пода#Бялата купчина има аура, която увеличава скоростта на сълзите#{VAR:EFFECTLIST}", -- Hallowed Ground
	-- Full old Desc: "При получаване на щети създава Бяла купчина на пода#Бялата купчина има аура, която увеличава скоростта на сълзите"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Нокът витае пред героя#Нанася щети при контакт", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "При използване призовавате Орбитална кост или Омагьосано чудовище за всеки убит враг в стаята#Използвайте преди да излезете от почистената стая", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Създава аурен пръстен, който замразява враговете", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}}Дава дрънкулка \"Тайнствен лист хартия \"", -- Divorce Papers
	-- Full old Desc: "+1 Сърце от кост#↑ {{Tears}} 0,7 скорост на стреляне#{{Trinket21}}Дава дрънкулка "Тайнствен лист хартия ""
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Бумеранг", -- Jaw Bone
	-- Full old Desc: "Бумеранг# Нанася X 2 от щетите ви"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 550] = "Кракът на Мама непрекъснато ви атакува#Използване спира Кракър на Мама в стаята#Ако го замените с друг елемент и излезете от стаята, той ще изчезне#(Опитайте Boss-Rush с този елемент!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Втора част на лопатата#Използвайте лопатата върху купчината мръсотия в \"Тъмната стая\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Когато се използва, той създава капак на пода до следващото ниво#Използвайте лопата в купчина мръсотия на ниво \"Тъмната стая\"#Отключва нещо страхотно ", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "Когато понесете щета, монета пада на пода", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% повече дропове от изпражненията", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "Намалява размера на таксата за активния предмет с 1", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "Телепортира ви в произволна стая, когато използвате активния предмет", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "Повече шампионски чудовища#Увеличава шанса за появата на Бос Предизвикателна стая", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Привлича монети", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "Шанс за ефект на предмета "Детето игра" при поемане на щети#(кратка неуязвимост + щети при контакт)"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Пулсиращи сълзи#Засяга само hitbox-а", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ {{Tears}} +0,3 скорост на стреляне", -- Wiggle Worm
	-- Full old Desc: "Сълзите летят като вълни#↑ {{Tears}} +0,3 скорост на стреляне"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Сълзите летят на спирала", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "Големи сълзи", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "Позволява ви да вземете един артикул от магазина безплатно#Може да се използва само един път", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Бодлите и локвите вече не ви увреждат", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "На мястото на разрушения камък се появява монета", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "Появяват се повече черни сърца", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "Появяват се повече вечни сърца", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Златни сандъци се отварят без ключове", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "Дава черно сърце, ако останете на половин сърце#Изчезва след 3 употреби", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Имитира \"Полароид\", \"Отрицателен\" и \"Липсващ плакат\"#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Имитира "Полароид", "Отрицателен" и "Липсващ плакат""
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "Променя сърцата в стаите с черни сърца или други предмети", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "След смъртта в Стаята на жертвоприношението, вие ще се появите като \"Изгубеният\"", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "Всеки път когато взмете монета, пърдите", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Създава изпражнения произволно", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "↑ {{Range}} +10 Обхват на сълзите", -- Hook Worm
	-- Full old Desc: "Сълзите летят по Г-образна траектория#↑ {{Range}} +10 Обхват на сълзите"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "22% шанс да се възродите отново като ??? (Синьото дете)", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Призовава съюзническа муха при повреда", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "Всяка стая получавате ефекта на произволна гъба", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "Появяват се повече червени сърца", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "Още ключове и сандъци", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "Появяват се повече Духовни сърца", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Damage}} 20% Шанс да получите +1,8 щети за стаята, ако сте ранени", -- Red Patch
	-- Full old Desc: "{{Damage}} 20% Шанс да получите +1,8 щети за стаята, ако сте ранени#{{Luck}} 100% шанс при 8 късмет"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "Появяват се повече бомби#Премахва \"Кърлеж\"", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 43] = "Когато останат 1/2 сърца, телепортира се в предишната стая", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "Появяват се повече хапчета", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "Появяват се повече карти", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "Шанс да получите половин червено сърце, когато вземете монета", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "Шанс да получите бомба, когато вземете монета", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "Шанс да получите ключ, когато вземете монета", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "Когато вземете монета, има шанс да получите допълнителна", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "- 15% здраве на боса#лекува за 1 сърце, когато влезете в стаята на боса#Не можете да го премахнете, след като го вземете (само с ключодържателя \"Match\")", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Спътник със пронизващи сълзи", -- Isaac's Head
	-- Full old Desc: "Спътник със пронизващи сълзи"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "Всеки етаж дава 1 вечно сърце", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "Отстъпка за дяволска стая", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Спътник който подскача из стаята#Стреля в същата посока като вас", -- ???'s Soul
	-- Full old Desc: "Спътник който подскача из стаята#Стреля в същата посока като вас"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Damage}} 1/15 шанс да получите +0.5 щети за стаята при убиване на чудовище", -- Samson's Lock
	-- Full old Desc: "{{Damage}} 1/15 шанс да получите +0.5 щети за стаята при убиване на чудовище#{{Luck}} 100% шанс при 10 късмет"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Преобразува всички сандъци в червени", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Маркираните камъни и камъните с тайни люкове се подчертават на всеки 10 секунди", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Намалява трол бомбите и ги прави нормални пикапи", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Случаен ефект на червей всеки 3 секунди", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Шанс срабатывания эффекта случайного кубика при получении урона#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Шанс срабатывания эффекта случайного кубика при получении урона"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Привлича обекти и врагове", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Случайно замаскира играча#Обърква враговете", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Шанс за хвърляне на съюзнически паяк, докато разчиствате стая", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Бомбите оставят отровна локва", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "Повече батерии", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "След като бомба експлодира, има шанс да остави друга бомба за взимане", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "Повече тайни люкове под камъни", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Случаен ефект на дрънкулка във всяка стая", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "50/50 шанс да намерите допълнителни предмети или нищо/враг в сандъци", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Увеличава отблъскването", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Ефектите върху враговете продължават по-дълго", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Малък шанс да получите копие на карта / руна, след като я използвате", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Неуязвимостта след нанасяне на щети трае по-дълго", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "+ 15% шанс за двойна златна стая#(два елемента за избор, можете да вземете само един)", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "Отваря всички магазини", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "Алчността / Супер Алчността вече няма да се появяват в магазини / тайни стаи", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "Използването на дарителската машина може да ви излекува или да създадете просяк", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "След счупването на изпражнение, се появява съюзническа муха", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "Лекува за половин червено сърце, когато използвате ключ#Всички половин сърца се заменят с пълни", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Изключително нисък шанс за намиране на активен предмет", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Сателитите са по-близо един до друг", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Изпражненията избухват, след като бъдат унищожени", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "Увеличава шанса за появата на черно сърце от Черно изпръжнение", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ 0,2 бързина на сълзите", -- Cracked Crown
	-- Full old Desc: "Подобрява статистиката ви с около 33% въз основа на вашите артефакти#↑ 0,2 бързина на сълзите"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "Мухите на врага могат да станат неутрални", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Дублира всички паяци/мухи, когато се създадат", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "Може да се задейства два пъти, след което изчезва", -- Tonsil
	-- Full old Desc: "Много нисък шанс за появата на спътник при поемане на щети#Може да се задейства два пъти, след което изчезва"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "Шанс да изстреляш лепкави сополи", -- Nose Goblin
	-- Full old Desc: "Шанс да изстреляш лепкави сополи"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "Шанс да изстреляш подскачаща сълза", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Когато вашият активен артикул е зареден:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Когато вашият активен артикул е зареден:#↑ {{Speed}} 0,25 скорост#↑ {{Range}} +0,75 обхват на стрелба#↑ {{Tears}} 0,2 бързина на сълзите#↑ {{Shotspeed}} +0,1 скорост на стреляне#↑ {{Damage}} +0,5 щети#↑ {{Luck}} +1 късмет"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Когато вашият активен артикул е напълно разреден:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Когато вашият активен артикул е напълно разреден:#↑ {{Speed}} 0,5 скорост#↑ {{Range}} 1,5 обхват на стрелба#↑ {{Tears}} 0,4 бързина на сълзите#↑ {{Shotspeed}} +0,3 скорост на стреляне#↑ {{Damage}} +1,5 щети#↑ {{Luck}} +2 късмет"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "+1 допълнителна тайна стая на новия етаж, ако го сържите", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "Ако имате еднакъв брой монети, бомби и ключове:#прави предметите за взимане двойни", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Увеличава радиуса на увреждане на локви и следи, оставени от вас", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Щетите ще игнорират Духовни сърца/Черни сърца, отнемайки Червени сърца", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Дава произволен предмет за вдигане при повреда#Изчезва след употреба#Може да се задейства, ако преминете през търговец", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Всички ваши спътници, вкл. орбиталните, замръзват", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "Магазините ще се появят в утробата", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "Златните стаи ще се появят в утробата", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "Машината за подновяване винаги ще бъде в стаята за артикули", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "В началото на всяка стая се хвърля взривна съюзническа муха", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Отровната съюзническа муха се хвърля в началото на всяка стая", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Бавна съюзническа муха се появява в началото на всяка стая", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Съюзническа муха се хвърля в началото на всяка стая, нанасяйки 2x - 4x вашата щета", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "2-5 съюзнически мухи се хвърлят в началото на всяка стая, нанасяйки двойни щети", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "Шанс за получаване на крила при нанасяне на щети#Работи само в стаята", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "В началото на нов етаж, лекува за половин червено сърце", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Презарежда напълно активния ви артикул, когато влезете в Бос стаята", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "Предоставя еднократен щит в началото на нов етаж", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Когато използвате активиран елемент, той ще бъде на пода на пиедестал", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Ангелските босове ще пуснат други артефакти вместо ключови части", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Вратата, през която сте минали, остава отворена", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Електрическа верига свързва вашите спътници помежду си", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Когато вземете монета, се появява съюзническа муха", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Насочване на сълзите от спътниците ви", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Телепортира те обратно до стартовата стая на етажа", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Кракът на мама се стоварва върху някой враг!#!!! Ако няма врагове, се стоварва върху теб", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Телепортира те до стаята на боса", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Създава 1 бомба, 1 ключ, 1 монета, 1 сърце (от случайни видове)", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Телепортира те до магазина", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Създава {{Slotmachine}} игрална машина или {{FortuneTeller}} гадателска машина", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} Създава кръводарителска машина#{{GreedMode}} В режим \"Алчност\" създава дяволски просяк", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Създава 6 трол бомби", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Телепортира те до златната стая", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Телепортира те до тайната стая", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Създава просяк или дяволски просяк", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Удвоява твоите бомби", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Удвоява твоите пари", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Удвоява твоите ключове", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{Heart}} Удвоява твоите червени сърца#Само възстановява здраве", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Превръща всички пикъпи в стаята в бомби", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Превръща всички пикъпи в стаята в монети", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Превръща всички пикъпи в стаята в ключове", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} Превръща всички пикъпи в стаята в сърца", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Телепортира те в дяволската или ангелската стая", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Разрушава всички скали в стаята", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Дублира всички пикъпи в стаята", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Създава люк към следващия етаж#8% шанс за {{LadderRoom}}люк със стълба", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Премахва проклятията за етажа", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 духовно сърце#{{CurseCursed}} Премахва проклятията за етажа"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Променя всички предмети на пиедестали в стаята", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Случаен ефект на руна#25% шанс да се създаде нова празна руна", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Превръща всички предмети на пиедестали в стаята в случайни подобрения на *stats#Превръща всички *пикъпи в стаята в съюзнически мухи", -- Black Rune
	-- Full old Desc: "Нанася 40 щета на всички врагове#Превръща всички предмети на пиедестали в стаята в случайни подобрения на *stats#Превръща всички *пикъпи в стаята в съюзнически мухи"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "При използване изстрелва картата в твоята посока на движение#Изстреляната карта напълно убива всеки враг или бос в играта, който бъде докоснат (освен Delirium)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Премахва цената от всички предмети в сегашния {{Shop}} магазин (или {{DevilRoom}} дяволска стая), правейки предметите безплатни", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Показва \"полезни\" съвети", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Изпълва цялата стая с акита", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "!!!Убива те на място#Създава 10 пикъпи/предмети на пода", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Отваря всички врати в стаята#!!!Може да отвори вратата към {{MegaSatan}} Mega Satan", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Моментално използване на активният предмет", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Променя предметите (пиедестали и пикъпи) в сегашната стая", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Две ръце на мама се спускат и сграбчват врагове", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{Collectible313}} Дава щит като \"Свещена мантия\" за една стая#(Спира щета веднъж)#25% шанс да се създаде нова Свещена карта", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Ефектите са за сегашната стая", -- Huge Growth
	-- Full old Desc: "↑ {{Damage}} +7 Щети#↑ {{Range}} +30 Обхват#Можете да чупите скали, като ги тъпчете#Уголемяване на героя#Ефектите са за сегашната стая"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#Ефектите са за сегашната стая", -- Era Walk
	-- Full old Desc: "{{Slow}} Забавя всички врагове#↑ {{Speed}} +0.5 Скорост#↓ {{Shotspeed}} -1 скорост на сълзите#Ефектите са за сегашната стая"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Създава отровен облак от газ около теб", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Нанася 1 сърце щета#Превръща се в хапче \"Пълно здраве\", ако имаш 1 сърце или по-малко", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Разменя бройките на притежаваните бомби и ключове", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Създава 5 бомби в период от общо 5 секунди на моментната ти позиция", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "Превръща се в хапче \"Повече здраве\", ако имаш 1 контейнер или по-малко", -- Health Down
	-- Full old Desc: "↓ {{Heart}} -1 контейнер за червено сърце#Превръща се в хапче "Повече здраве", ако имаш 1 контейнер или по-малко"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "!!!3 такива дават трансформацията \"Възрастен\" (+1 червено сърце)#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Само визуален ефект на пубертет#!!!3 такива дават трансформацията "Възрастен" (+1 червено сърце)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Телепортира те в произволна стая#{{ErrorRoom}} Малък шанс за телепорт до стаята I AM ERROR", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Напълно презарежда активната вещ", -- 48 Hour Energy!
	-- Full old Desc: "Напълно презарежда активната вещ#Създава 1-2 батерии"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "{{EmptyHeart}} Изпразва всички налични контейнери за червени сърца освен едно", -- Hematemesis
	-- Full old Desc: "{{EmptyHeart}} Изпразва всички налични контейнери за червени сърца освен едно#{{Heart}} Създава 1-4 червени сърца"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Не можеш да се движиш за 2 секунди", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Отваря входовете към тайните стаи на този етаж", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Очарова всички врагове в стаята", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Скрива цялата карта на етажа", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Създава голяма локва на пода, която нанася щети на враговете", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Сълзите ти се стрелят диагонално за 30 секунди", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "{{Collectible108}} Всички източници на щети причиняват само по половин сърце наведнъж за тази стая", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Всички източници на щети причиняват по цяло сърце наведнъж за тази стая", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Създава ако при движение за следващите 2 секунди", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Проклятието на Лабиринта (с подменяне на стаи) се прилага за сегашният етаж", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Зоната, в която могат да те ударят, не нараства", -- One makes you larger
	-- Full old Desc: "Визуално порастваш#Зоната, в която могат да те ударят, не нараства"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Зоната, в която могат да те ударят, също се смалява", -- One makes you small
	-- Full old Desc: "Визуално се смаляваш#Зоната, в която могат да те ударят, също се смалява"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Създава 1 съюзнически паяк от всяко ако в стаята (с минимум от 1)", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Създава 1 съюзнически паяк за всеки враг в стаята#Създава 1-3 паяци, ако няма врагове", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Екранът става много по-пикселиран за 30 секунди", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Създава локва от хлъзгава течност", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Създава локва от забавяща течност", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Забавя всички врагове в стаята", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Забързва всички врагове в стаята", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} Консумира държаната дрънкулка в момента и прибавя нейният ефект перманентно", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Изстрелва една сълза като \"Буркан с отрова\"", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Създава последното използвано хапче преди това#Ако друго хапче не е било използвано, създава копие на себе си", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
