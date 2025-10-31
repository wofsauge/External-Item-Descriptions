local languageCode = "ru"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 56] = "При активации создает под вами лужу, которая наносит 24 контактного урона в секунду#Лужа остается до выхода из комнаты", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room"

	[C_ID .. 117] = "Атакует врагов после того, как вы получите урон#Сохраняется между комнатами, если у игрока {{HalfHeart}} сердца", -- Dead Bird
	-- Full old Desc: "Атакует врагов после того, как вы получите урон#Наносит 4.3 контактного урона в секунду#Сохраняется между комнатами, если у игрока {{HalfHeart}} сердца"
	-- English: "Taking damage spawns a bird that attacks enemies#Persists between rooms if player is at 1/2 hearts"

	[C_ID .. 351] = "Наносит 100 урона всем врагам в комнате и {{Poison}} отравляет их#Открывает {{SecretRoom}} секретные комнаты / комнату {{Timer}} Босс-Раша / вход в {{Hush}} Синюю Утробу", -- Mega Bean
	-- English: "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks"

	[C_ID .. 420] = "<MISSING>", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished"

	[C_ID .. 436] = "Следует за персонажем и блокирует выстрелы#{{Tears}} После 10 попаданий разбивается и дает +1.0 к скорострельности до конца этажа", -- Milk!
	-- English: "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor"

	[C_ID .. 447] = "Создаёт облако через 4 секунды непрерывной стрельбы, наносящее урон#Со временем увеличивается в размере#Можно подвинуть, стреляя в него", -- Linger Bean
	-- English: "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it"

	[C_ID .. 470] = "Летает по комнате#Останавливается во время стрельбы#Во время остановки периодически выпускает 8 слёз во всех направлениях и блокирует вражеские выстрелы", -- Hushy
	-- Full old Desc: "Летает по комнате#Наносит контактный урон#Останавливается во время стрельбы#Во время остановки периодически выпускает 8 слёз во всех направлениях и блокирует вражеские выстрелы"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears"

	[C_ID .. 482] = "<MISSING>", -- Clicker
	-- English: "Changes your character to a random character#50% chance of removing the most recent item collected"

	[C_ID .. 510] = "Призывает союзника - случайную безумную версию босса#{{Warning}} Одновременно может быть активен только 1 босс#Сохраняется между комнатами", -- Delirious
	-- English: "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time"

	[C_ID .. 560] = "При получении урона персонаж выпускает 10 слез вокруг#Слезы оставляют лужу при попадании#↑ +1.2 к скорострельности за первое повреждение#↑ +0.4 к скорострельности за последующие#Скорострельность может стать больше максимума", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact"

	[C_ID .. 593] = "<MISSING>", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact"

	[C_ID .. 632] = "Иммунитет к эффектам {{Burning}} горения, {{Confusion}} ошеломления, {{Fear}} страха, {{Slow}} паутине, {{Poison}} отравления, облаков ядовитого газа и грибов#Лужи противника не наносят урон 1 секунду", -- Evil Charm
	-- Full old Desc: "{{Luck}} +2 к удаче#Иммунитет к эффектам {{Burning}} горения, {{Confusion}} ошеломления, {{Fear}} страха, {{Slow}} паутине, {{Poison}} отравления, облаков ядовитого газа и грибов#Лужи противника не наносят урон 1 секунду"
	-- English: "Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep"

	[C_ID .. 660] = "<MISSING>", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop"

	[C_ID .. 681] = "Фамильяр, который следует за персонажем и вылетает вперед при двойном клике стрельбы#Поглощает предметы и создает портал в особую комнату со случайным сундуком#Комната сохраняет свое содержимое и может быть использована для переноса {{Card}} карт /{{Rune}} рун /{{Pill}} пилюль / брелоков между этажами", -- Lil Portal
	-- English: "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run"

	[C_ID .. 685] = "<MISSING>", -- Jar of Wisps
	-- English: "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 706] = "Уничтожает все артефакты в комнате#Навсегда призывает саранчу бездны за каждый уничтоженный предмет#{{Damage}} Множитель урона cаранчи зависит от качества#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 5] = "<MISSING>", -- Purple Heart
	-- English: "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot"

	[T_ID .. 16] = "<MISSING>", -- Mom's Toenail
	-- English: "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location"

	[T_ID .. 23] = "<MISSING>", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"

	[T_ID .. 53] = "-15% здоровья Босса#Лечит на 1 сердце, когда вы заходите в {{BossRoom}}Комнату Боссом#{{Warning}} После взятия не может быть сброшен#Может быть удалён {{Trinket41}} Спичкой,  {{Trinket135}} Зажигалкой или проглочен", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping"

	[T_ID .. 70] = "<MISSING>", -- Louse
	-- English: "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear"

	[T_ID .. 76] = "<MISSING>", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"

	[T_ID .. 85] = "<MISSING>", -- Karma
	-- English: "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines"

	[T_ID .. 89] = "<MISSING>", -- Child Leash
	-- English: "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage"

	[T_ID .. 93] = "<MISSING>", -- Used Diaper
	-- English: "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"

	[T_ID .. 103] = "<MISSING>", -- Equality!
	-- English: "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"

	[T_ID .. 133] = "Бомбы, заложенные персонажем, наносят на 15% больше урона и взрываются быстрее", -- Short Fuse
	-- English: "Isaac's bombs explode faster#Bombs deal 15% more damage"

	[T_ID .. 135] = "<MISSING>", -- A Lighter
	-- English: "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 172] = "<MISSING>", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 11] = "<MISSING>", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game"

	[Card_ID .. 32] = "<MISSING>", -- Hagalaz
	-- English: "Destroy all rocks and stone enemies in the room"

	[Card_ID .. 38] = "<MISSING>", -- Berkano
	-- English: "{{Collectible706}} Summons 3 Abyss locusts for the room"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local Pill_ID = "5.70."
local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 20)] = "<MISSING>", -- Telepills
	-- English: "Teleports Isaac to a special room"

	[Pill_ID .. (HorseID + 26)] = "<MISSING>", -- Amnesia
	-- English: "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills"

	[Pill_ID .. (HorseID + 32)] = "<MISSING>", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses"

	[Pill_ID .. (HorseID + 42)] = "<MISSING>", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 43)] = "<MISSING>", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 44)] = "<MISSING>", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)

