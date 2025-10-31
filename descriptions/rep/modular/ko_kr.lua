local languageCode = "ko_kr"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "{{Poison}} 적에게 접촉 시 적에게 12의 중독 피해를 줍니다.", -- The Virus
	-- Full old Desc: "↑ {{SpeedSmall}}이동속도 +0.2#{{Poison}} 적에게 접촉 시 적에게 12의 중독 피해를 줍니다."
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "{{Poison}} 사용 시 공격방향으로 공격력 185의 독폭탄을 발사합니다.#{{Poison}} 독폭탄은 캐릭터의 눈물 효과 + 중독 효과 적용됩니다.", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "부정적인 알약 효과가 등장하지 않습니다.#방 클리어 보상이 등장할 확률이 대폭 증가합니다.#야바위와 도박기계의 성공 확률이 증가합니다.", -- Lucky Foot
	-- Full old Desc: "↑ {{LuckSmall}}행운 +1#부정적인 알약 효과가 등장하지 않습니다.#방 클리어 보상이 등장할 확률이 대폭 증가합니다.#야바위와 도박기계의 성공 확률이 증가합니다."
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "{{DamageSmall}} 폭탄 피해량: x10#{{Blank}}폭탄 피해량 60 이상인 경우: x5 +30", -- Dr. Fetus
	-- Full old Desc: "↓ {{TearsSmall}}연사 배율 x0.4#{{Bomb}} 공격이 폭탄 발사 공격으로 변경됩니다.#{{DamageSmall}} 폭탄 피해량: x10#{{Blank}}폭탄 피해량 60 이상인 경우: x5 +30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "픽업이 캐릭터에게 끌려옵니다.#{{Chest}} 가까이에 있는 상자를 접촉 없이 열 수 있습니다.", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} 눈물을 충전하며 발사합니다.#충전 상태에 따라 공격력 배율이 x0.3 ~ x4로 증감합니다.#최소 공격력 배율은 연사 수치에 비례합니다.", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "{{ArrowGrayRight}} 가능한 경우, 그 스테이지의 보스를 4기사로 교체합니다.", -- Book of Revelations
	-- Full old Desc: "{{DevilChanceSmall}} 소지 중일 때 악마방 확률 +17.5%#{{SoulHeart}} 사용 시 소울하트 +1;#{{ArrowGrayRight}} 가능한 경우, 그 스테이지의 보스를 4기사로 교체합니다.#{{Blank}} (대체 루트에서는 해당 없음)"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "사용 시 다음 스테이지로 가는 다락문을 생성합니다.#{{LadderRoom}} 치장성 타일(풀, 돌 조각 등) 위에 사용 시 사다리방으로 가는 다락문을 생성합니다.(스테이지 당 1회)", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "캐릭터가 있는 방에서 2칸 이내에 있는 스테이지 구조 및 특수방을 맵에 표시합니다.#위에서 떨어지는 탄환에 피해를 받지 않습니다.", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "{{Chargeable}} 공격이 발사 후 돌아오는 근접 식칼로 변경됩니다.#공격키를 누르고 있으면 충전되며 충전량에 따라 공격력과 사거리가 증가합니다.#칼 공격력: 기본 x2 ~ 최대 x6", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "사용 시 그 스테이지에서 랜덤 패밀리어를 하나 소환합니다.", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "사용 시 체력 한칸을 깎고 그 방에서 {{DamageSmall}}공격력 +1.2#그 방에서 연속적으로 사용 시 2번째 사용부터 깎이는 체력이 반칸으로 줄어들며 공격력 증가 효과는 중첩됩니다.#빨간하트를 우선적으로 깎습니다.", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "캐릭터가 독구름에 면역이 됩니다.", -- Bob's Curse
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#{{Poison}} 폭탄에 독 효과가 생기며 폭발 시 그 자리에서 독구름을 생성합니다.#캐릭터가 독구름에 면역이 됩니다."
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} 피격 시 전체 체력이 반칸 남았을때 방당 1회 한정으로 소울하트를 하나 획득합니다.#방 이동 시 해당 효과를 다시 발동할 수 있습니다.#!!! 헌혈 시 발동 안함", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "사용 시 공격이 휘두를 수 있는 근접 곡괭이로 변경됩니다.#{{ArrowGrayRight}} 곡괭이는 적에게 피해를 주거나 장애물을 부술 수 있습니다.#{{ArrowGrayRight}} 적 32회 공격 혹은 장애물 64개 파괴 시 비활성화되며;#{{ArrowGrayRight}} {{Collectible201}}Iron Bar를 획득하거나 스테이지 진입 시 다시 사용할 수 있습니다.", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "{{Poison}} 폭발하는 독눈물을 곡선형으로 발사합니다.", -- Ipecac
	-- Full old Desc: "↑ {{DamageSmall}}최종 공격력 +40#↓ {{TearsSmall}}연사 배율 x0.33#↓ {{RangeSmall}}사거리 배율 x0.8#↓ {{ShotspeedSmall}}탄속 -0.2#{{Poison}} 폭발하는 독눈물을 곡선형으로 발사합니다."
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "오른쪽 눈에서 공격력 x0.13의 지속 레이저를 발사합니다.", -- Technology 2
	-- Full old Desc: "↓ {{TearsSmall}}연사 배율 x0.66#오른쪽 눈에서 공격력 x0.13의 지속 레이저를 발사합니다."
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} 사용 시 그 방의 적에게 10의 피해 + 4초간 둔화시킵니다.", -- Spider Butt
	-- Full old Desc: "{{Slow}} 사용 시 그 방의 적에게 10의 피해 + 4초간 둔화시킵니다.#사용과 동시에 적 처치시 파란 아군 거미를 소환합니다."
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} 공격방향으로 날아가며 적에게 접촉 시 7의 피해를 주며 부서집니다.#파괴 시 파란 장판이 생성됩니다.#{{Petrify}} 장판은 지상의 적에게 초당 28의 석화 피해를 줍니다.", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "{{Poison}} 피격 시 독방귀와 독가스를 여러번 뀝니다.#방귀를 뀔 때마다 탄환을 튕겨냅니다.", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 203] = "50% 확률로 {{Heart}}빨간하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 픽업이 1+1로 드랍됩니다.", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "액티브 아이템의 충전량이 모두 채워지지 않았을 때 액티브 아이템 사용 시도 시;#{{ArrowGrayRight}} 부족한 충전량 한칸 당 체력 반칸을 깎고 액티브의 충전량을 모두 충전합니다.", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "공격키를 누르고 있을 시 눈물이 생성된 장소에서 멈추며 공격키를 떼거나 일정 시간이 지나면 발사됩니다.", -- Anti-Gravity
	-- Full old Desc: "↑ {{TearsSmall}}연사(+상한) +1#공격키를 누르고 있을 시 눈물이 생성된 장소에서 멈추며 공격키를 떼거나 일정 시간이 지나면 발사됩니다."
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{Bomb}} 폭발 및 불(탄환 제외) 공격에 피해를 입지 않으며;#{{HealingRed}} 폭발을 맞으면 체력을 반칸 회복합니다.", -- Pyromaniac
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#{{Bomb}} 폭발 및 불(탄환 제외) 공격에 피해를 입지 않으며;#{{HealingRed}} 폭발을 맞으면 체력을 반칸 회복합니다."
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "눈물이 무언가에 부딪힐 때 네갈래로 갈라집니다.", -- Cricket's Body
	-- Full old Desc: "↑ {{TearsSmall}}연사(+상한) +0.5#↓ {{RangeSmall}}사거리 x0.8#눈물이 무언가에 부딪힐 때 네갈래로 갈라집니다."
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "<MISSING>", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{Fear}} 15%의 확률로 적을 도망가게 하는 공격이 나갑니다.", -- Abaddon
	-- Full old Desc: "!!! {{BlackHeart}}최대 체력을 모두 블랙하트로 바꿉니다.#↑ {{BlackHeart}}블랙하트 +2#↑ {{DamageSmall}}공격력 +1.5#↑ {{SpeedSmall}}이동속도 +0.2#{{Fear}} 15%의 확률로 적을 도망가게 하는 공격이 나갑니다.#{{LuckSmall}} 행운 85 이상일 때 100% 확률"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "모든 적들을 영구적으로 둔화시킵니다.", -- Stop Watch
	-- Full old Desc: "↑ {{SpeedSmall}}이동속도 +0.3#모든 적들을 영구적으로 둔화시킵니다.#이 아이템으로 인한 둔화는 상태이상으로 취급되지 않아 다른 둔화 아이템과 중첩됩니다."
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "파란 아군 거미/파리와 파리/거미 타입의 패밀리어의 공격력이 2배 증가합니다.", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 261] = "공격이 캐릭터와 가까울수록 피해량이 3배 증가하며 멀어질수록(0.8초) 0배로 감소합니다.", -- Proptosis
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +0.5#공격이 캐릭터와 가까울수록 피해량이 3배 증가하며 멀어질수록(0.8초) 0배로 감소합니다."
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "피격 시 전체 체력이 1칸 이하일 때 그 방의 적에게 80의 피해를 줍니다.#{{Collectible35}} 블랙하트/The Necronomicon/The Devil의 피해량 +40", -- Missing Page 2
	-- Full old Desc: "↑ {{BlackHeart}}블랙하트 +1#피격 시 전체 체력이 1칸 이하일 때 그 방의 적에게 80의 피해를 줍니다.#{{Collectible35}} 블랙하트/The Necronomicon/The Devil의 피해량 +40"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "{{Rune}} 사용 시 가장 앞면에 소지중인 룬의 효과를 발동합니다.", -- Clear Rune
	-- Full old Desc: "{{Rune}} 획득 시 룬을 하나 드랍합니다.#{{Rune}} 사용 시 가장 앞면에 소지중인 룬의 효과를 발동합니다.#룬에 따라서 충전량이 달라집니다."
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "캐릭터를 따라다니며 캐릭터가 무적이 되고 심장이 피격당할 시 캐릭터가 피해를 받습니다.#{{Chargeable}} 공격키를 누르면 움직이지 않으며 공격키를 떼면 주변의 적을 밀쳐내며 8방향으로 공격력 8의 핏방울을 발사합니다.#캐릭터가 접촉한 적에게 틱 당 공격력 x2의 피해를 줍니다.", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "방 안을 돌아다니며 빨간하트를 먹습니다.#빨간하트 1.5개를 먹으면 아래 중 하나 드랍:#{{ArrowGrayRight}} {{BlackHeart}}블랙하트#{{ArrowGrayRight}} {{Card}}카드#{{ArrowGrayRight}} {{Rune}}룬#{{ArrowGrayRight}} {{Pill}}알약#{{ArrowGrayRight}} 아군 혹은 적 거미", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "{{Charm}} 방 안을 돌아다니며 접촉한 적을 매혹시킵니다.#그 방에 적이 있는 동안 랜덤 간격으로 파란 아군 거미를 소환합니다.", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "!!! 사용 시 이하의 주사위 아이템을 모두 발동:#{{ArrowGrayRight}} {{Collectible476}}{{Collectible284}}{{Collectible105}}{{Collectible437}}{{Collectible406}}{{Collectible285}}{{Collectible386}}{{Collectible166}}#{{ArrowGrayRight}} 그 방의 아이템, 픽업, 장애물, 소지중인 아이템, 능력치를 모두 바꿉니다.#{{ArrowGrayRight}} 그 방을 다시 시작하며, 방 클리어 시 이전과 다른 보상이 드랍됩니다.#{{ArrowGrayRight}} 그 방의 픽업 중 하나를 복사합니다.", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "사용 시 그 방의 적을 약화형 몬스터로 바꿉니다.", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "{{Card}} 사용 시 가장 앞면에 소지중인 카드의 효과를 발동합니다.#카드에 따라서 충전량이 달라집니다.", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "!!! 사용 시;", -- Book of Secrets
	-- Full old Desc: "!!! 사용 시;#{{ArrowGrayRight}} 그 방의 색돌이나 {{LadderRoom}}사다리방이 있는 돌이 빛나며;#{{ArrowGrayRight}} 맵에 {{Collectible21}}특수방 위치, {{Collectible246}}비밀방 위치, {{Collectible54}}스테이지 구조 중 하나를 표시합니다.#{{ArrowGrayRight}} 맵에 이미 특수방, 비밀방, 스테이지 구조가 전부 표시되어 있는 경우 그 스테이지에서 {{SecretRoom}}{{SuperSecretRoom}}비밀방이 자동으로 열립니다."
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "사용 시 공격방향으로 최대 공격력 125의 불꽃을 날립니다.#불꽃은 5번 막을 때까지, 혹은 10초동안 지속됩니다.", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "사용 시 그 방의 일반 적을 똥으로 바꿉니다.#똥 타입의 몬스터 및 보스를 즉사시킵니다.#용암이 가득 찬 방을 식혀 용암이었던 구간을 지나갈 수 있게 됩니다.", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{ArrowGrayRight}} {{BlackHeart}}블랙하트 +1#{{ArrowGrayRight}} {{DevilChanceSmall}}그 스테이지 {{BossRoom}}보스방 보상이 체력 거래가 필요한 {{DevilRoom}}악마방 아이템으로 대체됩니다.#!!! 해당 거래는 악마 거래로 취급됩니다.", -- Satanic Bible
	-- Full old Desc: "!!! 사용 시:#{{ArrowGrayRight}} {{BlackHeart}}블랙하트 +1#{{ArrowGrayRight}} {{DevilChanceSmall}}그 스테이지 {{BossRoom}}보스방 보상이 체력 거래가 필요한 {{DevilRoom}}악마방 아이템으로 대체됩니다.#!!! 해당 거래는 악마 거래로 취급됩니다."
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "사용 시 방귀를 뀌며 주변의 적을 밀쳐냅니다.", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "!!! 사용 시 {{Coin}}동전을 1개 소모하고;#{{ArrowGrayRight}} 그 방의 적에게 눈물 공격력 x2 +10의 피해를 줍니다.", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} 사용 시 소울하트 1칸을 최대 체력 1칸으로 바꿉니다.", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "사용 시 스테이지마다 다른 보상을 드랍합니다.#{{NoLB}}B1(1): {{SoulHeart}}2개; B2(2): {{Bomb}}2개 + {{Key}}2개#{{NoLB}}C1(3): {{BossRoom}}보스방 아이템 1개; C2(4): {{BossRoom}}1개 + {{SoulHeart}}2개#{{NoLB}}D1(5): {{SoulHeart}}4개; D2(6): {{Coin}}20개#{{NoLB}}W1(7): {{BossRoom}}2개; W2(8): {{Collectible33}}The Bible#???/Void: 없음#{{NoLB}}Sheol: {{DevilRoom}}악마방 아이템 1개 + {{BlackHeart}} 1개#{{NoLB}}Cath: {{AngelRoom}}천사방 아이템 1개 + {{EternalHeart}} 1개#{{NoLB}}Dark: {{Collectible523}}Moving Box 해금#Chest: {{Coin}}동전 1개#{{NoLB}}Home: {{Collectible580}}Red Key", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "이동속도가 0.85 이상인 상태에서 높은 속도로 적과 접촉시 피해를 받지 않고 적에게 25의 피해를 줍니다.", -- Aries
	-- Full old Desc: "↑ {{SpeedSmall}}이동속도 +0.25#이동속도가 0.85 이상인 상태에서 높은 속도로 적과 접촉시 피해를 받지 않고 적에게 25의 피해를 줍니다."
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "캐릭터가 지나간 자리에 파란 장판이 생깁니다.#파란 장판에 닿은 적은 공격력 x0.66의 피해를 받습니다.#장판의 효과는 캐릭터의 눈물 효과에 따라 달라집니다.", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "공격이 무언가에 부딪힐 때 적과 픽업이 공격에 끌려옵니다.", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "랜덤 방향으로 캐릭터의 공격력 x0.75의 공격을 발사합니다.", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "사용 시 캐릭터 기준 8방향으로 캐릭터의 공격력 +5의 눈물을 발사합니다.#눈물을 발사할 때마다 충전량이 증가합니다.", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "사용 시 머리가 분리됩니다.#{{ArrowGrayRight}} 분리된 머리는 제자리에서 공격방향으로 캐릭터의 공격과 같은 공격을 발사합니다.#{{ArrowGrayRight}} 몸통은 공격방향으로 여러 개의 눈물을 흩뿌리면서 발사합니다.", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "사용 키를 누르는 동안 충전량이 줄어들며 충전량이 모두 줄어들면 1초간 무적 상태가 됩니다.#무적 상태에서 적에게 접촉 시 빛줄기가 떨어집니다.#완벽 방어 : 무적 상태 시작과 동시에 적과 접촉 시 {{Collectible58}}0.5초간 보호막을 추가로 생성하며 {{Collectible696}}4방향으로 공격력 12의 빛줄기를 추가로 발사합니다.#!!! 무적 상태가 끝나도 키를 누르고 있으면 1초마다 체력 반칸의 피해를 받습니다.", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 330] = "{{Chargeable}} 충전이 필요한 공격이 충전 없이 자동으로 발사됩니다.", -- Soy Milk
	-- Full old Desc: "↓ {{DamageSmall}}공격력 배율 x0.2#↑ {{TearsSmall}}연사 배율 x5.5#↓ {{TearsizeSmall}}눈물크기 -0.3#{{Chargeable}} 충전이 필요한 공격이 충전 없이 자동으로 발사됩니다.#{{Blank}} (부가 공격 제외)"
	-- English: "Drastically reduces knockback"

	[C_ID .. 331] = "눈물에 후광이 생기며 후광에 닿은 적은 초당 60의 피해를 받습니다.", -- Godhead
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +1#↓ {{TearsSmall}}연사 -0.3#↓ {{ShotspeedSmall}}탄속 -0.3#공격이 적에게 유도됩니다.#눈물에 후광이 생기며 후광에 닿은 적은 초당 60의 피해를 받습니다."
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Trinket41}} Match Stick 장신구를 드랍합니다.", -- Match Book
	-- Full old Desc: "↑ {{BlackHeart}}블랙하트 +1#{{Bomb}}폭탄을 3개 드랍합니다.#{{Trinket41}} Match Stick 장신구를 드랍합니다."
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "사용 시 캐릭터의 공격력 x10 +10의 관통 눈물을 발사합니다.#!!! 패널티 피격 시 체력 2칸의 피해를 추가로 입으며 대포가 부서집니다.#부서진 대포의 충전량을 채우면 대포를 복구할 수 있습니다.", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "공격방향으로 캐릭터의 공격력 x0.75의 공격을 발사합니다.", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "벽과 장애물 둘레를 돌며 접촉하는 적에게 초당 30의 피해를 줍니다.", -- Lost Fly
	-- Full old Desc: "벽과 장애물 둘레를 돌며 접촉하는 적에게 초당 30의 피해를 줍니다.#주변의 적을 유인합니다."
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "{{Slow}} 폭탄이 터진 자리에 15초간 하얀 장판이 생기며 닿은 적은 느려집니다.#폭탄이 적에게 접촉 시 달라붙으며 해당 폭탄으로 달라붙은 적을 처치 시 파란 아군 거미 2~5마리를 소환합니다.", -- Sticky Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#{{Slow}} 폭탄이 터진 자리에 15초간 하얀 장판이 생기며 닿은 적은 느려집니다.#폭탄이 적에게 접촉 시 달라붙으며 해당 폭탄으로 달라붙은 적을 처치 시 파란 아군 거미 2~5마리를 소환합니다."
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "눈물을 한 방향으로만 발사 시 {{TearsSmall}}연사(+상한)가 최대 2배까지 지속적으로 증가합니다.", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 375] = "폭발 공격에 피해를 입지 않습니다.#적 탄환에 맞았을 때 20% 확률로 피해를 무시하며 캐릭터의 눈물과 같은 눈물을 3발 발사합니다.#위에서 떨어지는 탄막에 피해를 받지 않습니다.", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "{{Shop}} 상점에서 물건 구매 시 같은 종류의 아이템이 더 비싼 가격으로 재입고됩니다.", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "{{Coin}} 열쇠를 소모하는 문/상자/열쇠 블록을 열때 동전을 대신 소모합니다.", -- Pay To Play
	-- Full old Desc: "↑ {{Coin}}동전 +5#{{Coin}} 열쇠를 소모하는 문/상자/열쇠 블록을 열때 동전을 대신 소모합니다."
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "사용 시 공격방향으로 몬스터볼을 던집니다.#{{Friendly}} 몬스터볼에 맞은 적은 포획되며 재사용 시 아군 상태로 소환됩니다.#포획한 몬스터볼 획득 시 즉시 재충전됩니다.", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} 공격키를 누르고 있는 동안 충전되며 공격키를 떼면 공격했던 방향으로 돌진해 벽에 튕겨다니며 적을 공격합니다.#충전량에 따라 공격력과 거리가 증가하며 이동 속도에 따라 5~20의 피해를 줍니다.", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "<MISSING>", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} 방 7~8개 클리어 시 룬 및 영혼석을 하나 드랍합니다.", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "적의 탄환이 다른 적의 탄환에 맞을 수 있습니다.#다른 적의 탄환에 맞은 적은 그 적을 공격합니다.", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 확률적으로 적을 중독시키는 공격이 나갑니다.#{{Poison}} 적에게 접촉시 12의 피해를 주고 적을 중독시킵니다.#{{BlackHeart}} {{ColorOrange}}접촉으로 중독된 적{{CR}}이 죽을때 20% 확률로 블랙하트가 드랍됩니다.", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "조준점을 조종하여 조준점이 있는 방향을 향해 눈물을 자동으로 발사합니다.#패밀리어들이 조준점을 향해 공격합니다.#{{ButtonRT}}버튼을 눌러 자동 공격을 멈출 수 있습니다.", -- Marked
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.7#↑ {{RangeSmall}}사거리 +3.15#조준점을 조종하여 조준점이 있는 방향을 향해 눈물을 자동으로 발사합니다.#패밀리어들이 조준점을 향해 공격합니다.#{{ButtonRT}}버튼을 눌러 자동 공격을 멈출 수 있습니다."
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "{{Chargeable}} 공격이 충전형 레이저 고리 공격으로 변경됩니다.#레이저 공격력은 충전량에 따라 x0.25 ~ x1로 증감합니다.#레이저는 사거리 제한이 없으며 적과 장애물을 관통합니다.", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} 공격키를 2.5초 이상 누르면 충전되며 공격키를 떼면 캐릭터 주위에 검은 고리가 둘러집니다.#고리는 다단히트로 접촉한 적에게 최대 공격력 x30의 피해를 줍니다.", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "확률적으로 접착 눈물이 나갑니다.#접착 눈물이 적에게 붙을 시 몇초 후 폭발하여 공격력 +60의 피해를 줍니다.", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "탄환을 막을 시 10% 확률로 랜덤 효과의 방귀를 뀝니다.#방귀는 적에게 5~6의 피해를 줍니다.", -- Farting Baby
	-- Full old Desc: "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#탄환을 막을 시 10% 확률로 랜덤 효과의 방귀를 뀝니다.#방귀는 적에게 5~6의 피해를 줍니다."
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} 공격 키를 두 번 눌러 날아갑니다.#{{ArrowGrayRight}} 날아가는 도중 적이나 픽업에 접촉 시 적이나 픽업의 종류를 바꿉니다.", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "캐릭터 머리에 오라가 생기며 오라 색에 따라 특정 능력치가 증가합니다.#피격시 비활성화되며 방 이동시 다른 색으로 변합니다.#{{ArrowGrayRight}} {{ColorRed}}빨강:{{CR}} {{DamageSmall}}공격력 +4.0#{{Blank}} {{ColorCyan}}파랑:{{CR}} {{TearsSmall}}연사(+상한) +2#{{Blank}} {{ColorOrange}}주황:{{CR}} {{RangeSmall}}사거리 +3#{{Blank}} {{ColorYellow}}노랑:{{CR}} {{SpeedSmall}}이동속도 +0.5", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "적 처치 시 25%의 확률로 처치한 적 주위에 검은 고리가 둘러집니다.#고리는 다단히트로 접촉한 적에게 최대 공격력 x30의 피해를 줍니다.#{{LuckSmall}} 행운 30 이상일 때 100% 확률", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "{{Coin}} 동전의 최대 소지 가능 개수가 999로 증가합니다.#{{Coin}} 방 클리어 시 보상이 드랍되지 않으면 동전을 1~3개 드랍합니다.", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "검은 오라를 가지고 대각선으로 이동합니다.#오라 안에 들어온 적에게 프레임당 2.5의 피해를 줍니다.#{{DamageSmall}} 오라 안에 들어온 캐릭터의 공격력 x1.5", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} 사용 시 매혹 방귀를 뀝니다.", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "!!! 스테이지 당 3회만 사용 가능#사용 시 모든 상태를 이전 방의 시점으로 시간을 되돌립니다.#{{Slow}} 회수 소진 이후 사용 시 그 방의 적들을 8초간 둔화시킵니다.", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "폭탄이 터질 때;#{{ArrowGrayRight}} 63%의 확률로 랜덤 픽업 또는 장신구가 드랍되거나;", -- Glitter Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때;#{{ArrowGrayRight}} 63%의 확률로 랜덤 픽업 또는 장신구가 드랍되거나;#{{ArrowGrayRight}} {{Charm}}15%의 확률로 랜덤 적을 매혹시킵니다.#!!! 픽업/장신구가 소환될 때마다 그 스테이지에서 소환 확률이 1%p씩 감소합니다."
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "그림자가 캐릭터가 지나간 길을 0.66초 후 따라옵니다.#적과 접촉 시 그 방에서 초당 26의 피해를 주는 검은색 아군 애벌레를 소환합니다.", -- My Shadow
	-- Full old Desc: "그림자가 캐릭터가 지나간 길을 0.66초 후 따라옵니다.#적과 접촉 시 그 방에서 초당 26의 피해를 주는 검은색 아군 애벌레를 소환합니다."
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "사용 시 그 방을 다시 시작하며, 방 클리어 시 이전과 다른 보상이 드랍됩니다.#{{MirrorRoom}} 거울세계의 특수방에서 사용 시 해당 특수방을 재설정합니다.", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "눈물을 15번 발사할 때마다 여러개의 눈물 다발이 나갑니다.", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "{{Heart}} 피격 시 25% 확률로 빨간하트를 하나 드랍합니다.#{{BleedingOut}} 피격 시 빨간하트를 획득할 때까지 20초마다 체력 반칸의 피해를 입으며 공격방향으로 여러 개의 눈물을 흩뿌리면서 발사합니다.#{{BleedingOut}} 출혈은 빨간하트가 없거나 전체 체력이 반칸이 될 때까지 유지됩니다.", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "눈물을 20번 발사할 때마다 {{ColorYellow}}동전을 1개 소모하고{{CR}} 황금 눈물을 발사합니다.#{{Collectible202}} 황금 눈물은 캐릭터의 공격력 x1.5 +10의 피해를 주며 적을 멈추게 만듭니다.#{{ArrowGrayRight}} 멈춘 적 처치 시 {{Coin}}동전을 1~3개 드랍합니다.", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "타로 타입 카드에 추가적인 효과를 부여합니다.", -- Tarot Cloth
	-- Full old Desc: "{{Card}} 카드를 하나 드랍합니다.#타로 타입 카드에 추가적인 효과를 부여합니다.#!!! 일부 카드의 추가적인 효과는 {{Collectible286}}Blank Card로 사용 시 적용되지 않거나 약화됩니다."
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "눈물이 무언가에 부딪힐 때 1~3갈래로 갈라집니다.", -- Compound Fracture
	-- Full old Desc: "↑ {{RangeSmall}}사거리 +1.5#눈물이 무언가에 부딪힐 때 1~3갈래로 갈라집니다."
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "소지중인 픽업의 개수에 따라 챔피언 적이 드랍하는 보상과 방 클리어 보상이 아래 순서대로 정해집니다.", -- Glyph of Balance
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +2#소지중인 픽업의 개수에 따라 챔피언 적이 드랍하는 보상과 방 클리어 보상이 아래 순서대로 정해집니다.#{{ArrowGrayRight}} {{SoulHeart}}:최대체력 없음, {{SoulHeart}}2칸 미만#{{Blank}} {{Heart}}{{Key}}{{Bomb}}:각각 반칸/0/0개 보유#{{Blank}} {{Heart}}:비어있는 체력 존재#{{Blank}} {{Coin}}{{Key}}{{Bomb}}:각각 15/5/5개 미만 보유#{{Blank}} {{Trinket}}장신구: 장신구 미소지#{{Blank}} {{SoulHeart}}: 전체 체력 6칸 미만#{{ArrowGrayRight}} {{ColorYellow}}방 클리어 보상이 상자이거나{{CR}} 모든 조건 충족 시 드랍 변동 없음"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "캐릭터를 따라다니며 공격키를 누르고 있으면 움직이지 않습니다.#다른 패밀리어들이 이 패밀리어를 기준으로 이동합니다.#멈추고 있는 동안은 패밀리어들이 적을 자동으로 조준 + 공격합니다.", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "충전량을 모두 채울 시 복원:#{{Collectible352}} {{ColorGray}}사용 시 공격력 x10 +10의 눈물을 발사합니다.#!!! {{ColorGray}}피격 시 체력 2칸의 피해를 추가로 입으며 대포가 부서집니다.#{{ColorGray}}부서진 대포의 충전량을 채우면 대포를 복구할 수 있습니다.", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "사용 시 그 방의 픽업 중 하나와 같은 종류의 픽업을 생성합니다.", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "사용 시 그 방의 아이템을 흡수합니다.#액티브를 흡수한 이후 다음 사용부터 아이템을 사용할 때마다 흡수한 액티브의 효과가 발동됩니다.#패시브 흡수 시 랜덤 능력치가 2개 증가합니다.", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "아래 중 원하는 주사위 아이템을 골라 사용할 수 있습니다:#{{Blank}} {{Collectible476}}{{Collectible284}}{{Collectible105}}{{Collectible609}}{{Collectible437}}{{Collectible406}}{{Collectible285}}{{Collectible386}}{{Collectible166}}{{Collectible283}}", -- D Infinity
	-- Full old Desc: "아래 중 원하는 주사위 아이템을 골라 사용할 수 있습니다:#{{Blank}} {{Collectible476}}{{Collectible284}}{{Collectible105}}{{Collectible609}}{{Collectible437}}{{Collectible406}}{{Collectible285}}{{Collectible386}}{{Collectible166}}{{Collectible283}}#{{Blank}} ( {{ButtonRT}}버튼으로 전환 가능)"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "{{EmptyHeart}} 빈 최대 체력 1칸 당 {{DamageSmall}}공격력 증가#!!! 증가량 예시 :#1칸일 때 +0.3#2칸일 때 +0.92#3칸일 때 +1.76#4칸일 때 +2.79#5칸일 때 +3.98", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "공격이 적에게 부딪힐 때마다 1~2개의 짧은 유도 레이저가 발사됩니다.#적에게 붙은 유도 레이저도 다른 적에게 붙을 수 있습니다.", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 497] = "{{Confusion}} {{ColorOrange}}공격키를 누르지 않은 상태에서{{CR}} 방 입장 시 그 방의 적들이 혼란에 걸리며 캐릭터의 {{SpeedSmall}}이동속도 +0.5#!!! 공격키를 누르면 효과가 풀리면서 이하 효과 발동:#{{ArrowGrayRight}} 주변의 적에게 15의 피해를 줍니다.#{{ArrowGrayRight}} 1초동안 매우 빠르게 감소하는 {{DamageSmall}}공격력 +10.5/{{TearsSmall}}연사(상한) +7.5", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "{{EmptyHeart}} 동전 25개 당 빈 최대 체력 +1#동전으로 늘어난 체력은 동전 소비 시 사라집니다.", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "{{ArrowGrayRight}} Big Horn의 손은 적을 즉사시키거나 12의 피해를 3번 주고 사라집니다.", -- Little Horn
	-- Full old Desc: "적에게 접촉 시 3.5의 피해를 줍니다.#5%의 확률로 Big Horn의 손이 나옵니다.#{{ArrowGrayRight}} Big Horn의 손은 적을 즉사시키거나 12의 피해를 3번 주고 사라집니다.#{{LuckSmall}} 행운 15 이상일 때 20% 확률"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "사용 시 그 방에 파란 아군 Pooter를 생성합니다.", -- Brown Nugget
	-- Full old Desc: "사용 시 그 방에 파란 아군 Pooter를 생성합니다.#아군 Pooter는 주위의 적에게 공격력 3.5의 눈물을 발사합니다."
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "{{BleedingOut}} 적을 뒤에서 공격할 시 2배의 피해를 입히고 출혈 상태로 만듭니다.#{{BleedingOut}} 출혈 상태의 적 밑에 장판이 깔리며 다른 적도 장판에 피해를 받습니다.", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "사용 시 그 방의 적에게 눈물 공격력 + 적 최대 체력의 10%의 피해를 주며 일정 확률로 빨간하트 반칸을 드랍합니다.", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#{{BleedingOut}} 접촉하는 적에게 초당 공격력의 x1.5의 출혈 피해를 줍니다.#{{BleedingOut}} 출혈 상태의 적 밑에 장판이 깔리며 다른 적도 장판에 피해를 받습니다.", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.", -- Bloodshot Eye
	-- Full old Desc: "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#자신이 바라보는 방향으로 공격력 3.5의 눈물을 발사합니다.#적과 접촉 시 초당 20의 피해를 줍니다."
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "적이 때때로 1초간 멈춥니다.#적의 탄환이 일정 확률로 1초간 멈춘 후 사라집니다.#방 클리어 보상이 {{Heart}}/{{Coin}}/{{Key}}/{{Bomb}}/{{GrabBag}}인 경우 25% 확률로 하나 더 나옵니다.", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "폭탄을 설치할 때 지연 없이 빠르게 설치할 수 있습니다.#설치된 폭탄끼리는 서로 밀리지 않습니다.", -- Fast Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +7#폭탄을 설치할 때 지연 없이 빠르게 설치할 수 있습니다.#설치된 폭탄끼리는 서로 밀리지 않습니다."
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "사용 시 3초간 캐릭터에게 날아오는 적의 탄환을 붙잡습니다.#3초가 끝나면 붙잡은 탄환을 다시 되돌려 발사합니다.", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "사용 시 그 방의 아이템과 픽업 중 랜덤 아이템 10개를 상자에 저장합니다.#재사용 시 저장했던 아이템들을 드랍합니다.", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "눈물마다 공격력 33%의 레이저가 연결되어 나갑니다.", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "사용 시 다음 스테이지로 가는 다락문을 생성합니다.#{{LadderRoom}} 치장성 타일(풀, 돌 조각 등) 위에 사용 시 사다리방으로 가는 다락문을 생성합니다.(스테이지 당 1회)#{{Player16}} Dark Room 스테이지의 특정 타일 위에 사용 시 The Forgotten 캐릭터를 해금할 수 있습니다.", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% 확률로 접착 눈물이 나갑니다.#접착 눈물이 적에게 붙을 시 2.5초후 폭발해 5의 피해를 줍니다.", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} 캐릭터와 가까이 있는 적을 도망가게 합니다.", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "사용 시 동전 5개를 소모하고 그 방에서 {{DamageSmall}}공격력 +1.2#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "↑ {{Coin}}동전 +5#사용 시 동전 5개를 소모하고 그 방에서 {{DamageSmall}}공격력 +1.2#공격력 증가 효과는 중첩됩니다."
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "{{Collectible118}} 공격이 충전형 혈사포 공격으로 변경됩니다.", -- Sulfur
	-- Full old Desc: "{{Timer}} 사용 시 그 방에서:#{{Collectible118}} 공격이 충전형 혈사포 공격으로 변경됩니다."
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "사용 시 30% 확률로 아래 중 하나를 드랍합니다:#{{ArrowGrayRight}} {{SoulHeart}}소울하트#{{ArrowGrayRight}} {{Card}}카드#{{ArrowGrayRight}} {{Rune}}룬#{{ArrowGrayRight}} 장신구", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "공격 시 확률적으로 랜덤 방향으로 1~3개의 눈물을 발사합니다.", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "캐릭터와 가까이 있는 적과 인접한 위치에 있는 적에게 공격력 x0.75의 전기 피해를 줍니다.", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "피격 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사하며;#{{ArrowGrayRight}} 그 방에서 {{TearsSmall}}연사(+상한) +1.2#{{Blank}} (2회 피격 시부터 {{TearsSmall}}+0.4)", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 561] = "충전이 필요한 공격이 충전 없이 자동으로 발사됩니다.", -- Almond Milk
	-- Full old Desc: "↓ {{DamageSmall}}공격력 배율 x0.3#↑ {{TearsSmall}}연사 배율 x4#눈물을 발사할 때마다 랜덤 벌레 장신구 효과 눈물이 나갑니다.#충전이 필요한 공격이 충전 없이 자동으로 발사됩니다.#{{Blank}} (부가 공격 제외)"
	-- English: "Tears gain random worm trinket effects and some item effects"

	[C_ID .. 562] = "능력치를 항상 가장 높았던 값으로 고정합니다.#!!! 아군 자폭 거미/파리, {{Collectible706}}심연의 파리의 공격력은 이 아이템의 영향을 받지 않습니다.", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "폭탄을 설치할 때마다 여러 종류의 랜덤 효과의 폭탄이 설치됩니다.", -- Nancy Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄을 설치할 때마다 여러 종류의 랜덤 효과의 폭탄이 설치됩니다."
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "적을 따라다니며 접촉한 적에게 초당 3.2의 피해를 줍니다.#15/40기의 적 처치시 폭주하여 공격력이 증가;#{{ArrowGrayRight}} 일정 수의 적 처치 시마다 {{HalfHeart}}/{{Heart}}를 드랍하나;#{{ArrowGrayRight}} {{ColorOrange}}적이 되어 캐릭터를 공격합니다.{{CR}}#적이 된 패밀리어에게 일정 이상의 피해를 입히면 원래 상태로 돌아옵니다.", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} 스테이지 진입 시 소울하트 +0.5#스테이지 전환 애니메이션에서 다음 스테이지의 {{TreasureRoom}}보물방 아이템과 {{BossRoom}}보스를 보여줍니다.", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "{{TearsSmall}} 방 클리어 시 연사(+상한) +0.4 (최대 5회)#!!! 패널티 피격 시 연사 증가치가 초기화됩니다.", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "공격키를 두번 눌러 방패를 날릴 수 있습니다.#방패는 1초간 날아가며 적을 밀쳐내고 공격을 반사합니다.#{{TimerSmall}} (쿨타임 2.5초)", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "!!! 스테이지 진입 시 빨간하트를 모두 깎고 그 스테이지에서 {{DamageSmall}}공격력과 {{SpeedSmall}}이동속도가 증가합니다.#!!! 증가량:#{{DamageSmall}} : +0.15 * (깎인 {{HalfHeart}} 개수 ^ 2)#{{SpeedSmall}} : +0.05 * 깎인 {{HalfHeart}} 개수#피격 시 효과는 깎인 빨간하트 수만큼 발동합니다.", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "공격할 때마다 랜덤 색상의 공격이 나갑니다.#!!! 공격의 색상에 따른 효과:#{{Blank}} {{ColorGreen}}{{Poison}}독{{CR}}, {{ColorYellow}}{{Fear}}공포{{CR}}, {{ColorBlue}}{{Collectible261}}눈물크기감소{{CR}}, {{ColorPastelBlue}}{{Collectible596}}빙결{{CR}}, {{ColorPink}}{{Charm}}매혹{{CR}}, {{ColorRed}}{{Collectible257}}화상/폭발{{CR}}, {{ColorPurple}}{{Collectible3}}유도{{CR}}, {{ColorOrange}}{{Bait}}표식{{CR}}", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "바닥의 가시나 장판에 피해를 입지 않습니다.", -- Orphan Socks
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +2#↑ {{SpeedSmall}}이동속도 +0.3#바닥의 가시나 장판에 피해를 입지 않습니다."
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "날아가는 눈물의 방향을 조종할 수 있습니다.", -- Eye of the Occult
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +1#↑ {{RangeSmall}}사거리 +7.5#↓ {{ShotspeedSmall}}탄속 -0.16#날아가는 눈물의 방향을 조종할 수 있습니다."
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "공격 시 20%의 확률로 캐릭터의 주위를 도는 눈물이 추가로 나갑니다.", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 체력을 모두 회복합니다.#↑ {{DamageSmall}}공격력 배율 x1.2#공격 시 20%의 확률로 캐릭터의 주위를 도는 눈물이 추가로 나갑니다."
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "캐릭터의 주위에 2개의 후광이 생기며;#{{ArrowGrayRight}} 후광에 닿은 적에게 각각 0.75/4의 피해를 줍니다.", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "{{Slow}} 공격방향으로 공격력 1.5의 둔화 효과 눈물 4발이 추가로 나갑니다.#피격 시 일정 확률로 거미가 나와 방 안을 돌아다니며 적에게 눈물을 자동으로 발사합니다.#{{Blank}} (일부 상황의 경우 거미가 나오지 않음)", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "방 입장 시 돌 오브젝트가 일정 확률로 똥으로 바뀝니다.#모든 Dip 몬스터가 아군이 됩니다.#똥 파괴 시 똥 패밀리어를 1~4마리 소환합니다.#똥 패밀리어는 적의 탄환을 막으며 적에게 접촉 시 초당 6의 피해를 줍니다.#파괴하는 똥의 종류에 따라 소환되는 똥 패밀리어의 능력이 달라집니다.", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "사용 시 캐릭터 머리 위에 칼이 소환되며 모든 방의 아이템이 2배로 나옵니다.#상자/판매 아이템은 영향을 받지 않습니다.#패널티 피격 시 그 이후부터 캐릭터가 즉사할 확률이 생깁니다.#!!! 즉사확률: 4프레임 당 1/10000", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "사용 시 캐릭터의 주위에 커다란 노란 장판이 생깁니다.#장판은 지상의 적에게 초당 24의 피해를 줍니다.", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "공격이 휘두를 수 있는 근접 칼 공격으로 변경됩니다.#{{Chargeable}} 공격키를 누르고 있으면 충전되며 완전히 충전되었을때 공격키를 떼면 검을 360도로 휘두르며 탄환을 반사합니다.#!!! 공격력: 기본 x3 +3.5#{{Blank}} 최대 충전 x8 +10#최대 체력이 꽉 찼거나 완충 공격 시 검 모양의 눈물을 발사합니다.#검을 휘두를 때 픽업과 상호작용합니다.", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "{{RedRoom}} 빨간문 테두리 근처에서 사용 시 빨간방이 생성됩니다.#빨간방은 일반방 또는 특수방의 구조로 생성될 수 있습니다.#{{ErrorRoom}} 13x13의 범위 밖에 사용할 경우 에러방으로 향하는 문이 생성됩니다.", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "캐릭터 주변을 돌며 캐릭터에게 날아오는 적의 탄환을 추적해 반사합니다.", -- Psy Fly
	-- Full old Desc: "캐릭터 주변을 돌며 캐릭터에게 날아오는 적의 탄환을 추적해 반사합니다.#적에게 접촉 시 초당 15의 피해를 줍니다."
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "{{ArrowGrayRight}} {{SpeedSmall}}이동속도 -0.03#{{ArrowGrayRight}} 화면이 일그러집니다.#다른 방 이동 시 연사 증가가 40%, 이속 감소가 200%만큼 적용되며 방 클리어 시 효과가 1회분 제거됩니다.", -- Wavy Cap
	-- Full old Desc: "!!! 사용할 때마다 그 방에서;#{{ArrowGrayRight}} {{TearsSmall}}연사(+상한) +0.75#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 -0.03#{{ArrowGrayRight}} 화면이 일그러집니다.#다른 방 이동 시 연사 증가가 40%, 이속 감소가 200%만큼 적용되며 방 클리어 시 효과가 1회분 제거됩니다.#사용 회수가 10회 이상인 경우 더 이상 충전되지 않습니다."
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "폭탄 대신 로켓이 나가며 로켓은 캐릭터의 공격방향으로 날아가 폭발합니다.", -- Rocket in a Jar
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄 대신 로켓이 나가며 로켓은 캐릭터의 공격방향으로 날아가 폭발합니다."
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "다른 액티브와 결합되며 결합된 액티브 사용 시 특수 능력을 가진 위습을 소환합니다.#최대 26개({{InnerWisp}}6/{{MiddleWisp}}8/{{OuterWisp}}12)까지 소환 가능#↑ {{AngelChanceSmall}}천사방 확률 +25%", -- Book of Virtues
	-- Full old Desc: "사용 시 캐릭터 주위를 돌며 공격방향으로 공격력 2의 눈물을 발사하는 위습을 소환합니다.#다른 액티브와 결합되며 결합된 액티브 사용 시 특수 능력을 가진 위습을 소환합니다.#최대 26개({{InnerWisp}}6/{{MiddleWisp}}8/{{OuterWisp}}12)까지 소환 가능#{{AngelChanceSmall}} 악마방에서 거래해도 천사방 등장 확률이 제거되지 않습니다.#↑ {{AngelChanceSmall}}천사방 확률 +25%"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "방 클리어로 충전 불가#사용 시 악마 거래 여부에 따라 아래 아이템 및 픽업을 소환합니다:#{{AngelChanceSmall}} 거래X: {{SoulHeart}}3/{{AngelRoom}}2#{{DevilChanceSmall}} 거래O: {{SoulHeart}}2/{{AngelRoom}}1#충전량이 0부터 시작하며 소울하트/블랙하트 획득 시 체력으로 획득되지 않는 대신 하트 반칸당 한칸씩 충전됩니다.", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "{{AngelRoom}} 스테이지 첫 방에 천사방 아이템을 파는 상점으로 갈 수 있는 사다리가 생성됩니다.#!!! 사다리는 방을 벗어나면 사라집니다.", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "{{ArrowGrayRight}} {{Battery}}액티브 아이템의 충전량을 모두 채워줍니다.", -- Sol
	-- Full old Desc: "{{BossRoom}} 맵에 보스방의 위치가 표시됩니다.#!!! {{ColorOrange}}표시된 방의 보스 처치{{CR}}시 다음 효과 발동:#{{ArrowGrayRight}} {{Card20}}맵에 스테이지 구조, 특수방, 일반비밀방 위치 표시#{{ArrowGrayRight}} {{Heart}}체력을 모두 회복#{{ArrowGrayRight}} 그 스테이지에서 {{DamageSmall}}+3/{{LuckSmall}}+1#{{ArrowGrayRight}} {{CurseCursedSmall}}스테이지의 저주 제거#{{ArrowGrayRight}} {{Battery}}액티브 아이템의 충전량을 모두 채워줍니다."
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "스테이지에 {{SecretRoom}}비밀방과 {{SuperSecretRoom}}일급 비밀방이 1개씩 더 생성됩니다.#{{SecretRoom}} 맵에 랜덤 비밀방 하나의 위치를 표시합니다.#비밀방 입장 시 달빛이 생성됩니다.#달빛과 접촉 시 그 스테이지에서 {{HalfSoulHeart}}소울하트 +0.5, {{TearsSmall}}연사(+상한) +0.5#{{Blank}} (첫 달빛은 추가 {{TearsSmall}}+0.5)", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "클리어하지 않은 방의 문이 닫히지 않습니다.", -- Mercurius
	-- Full old Desc: "↑ {{SpeedSmall}}이동속도 +0.4#클리어하지 않은 방의 문이 닫히지 않습니다.#특수방의 문은 열리지 않습니다."
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} 캐릭터와 가까이 있는 적을 매혹시킵니다.", -- Venus
	-- Full old Desc: "↑ {{Heart}}최대 체력 +1#↑ {{HealingRed}}빨간하트 +1#{{Charm}} 캐릭터와 가까이 있는 적을 매혹시킵니다."
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "공격이 확률적으로 장애물을 부숩니다.#눈물을 발사할 때마다 눈물 공격력이 x0.5~x2.0로 증감하며 공격이 적을 더욱 밀쳐냅니다.", -- Terra
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +1#공격이 확률적으로 장애물을 부숩니다.#눈물을 발사할 때마다 눈물 공격력이 x0.5~x2.0로 증감하며 공격이 적을 더욱 밀쳐냅니다."
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "이동키를 두번 누르면 누른 방향으로 돌진하여 접촉한 적에게 공격력 x4 +8의 피해를 줍니다.#{{TimerSmall}} (쿨타임 3초/{{Collectible130}}{{Collectible181}}1초)", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 595] = "캐릭터 주변에 하얀 고리가 생기며 방 입장 시 고리를 따라 움직이는 눈물이 7개 생성됩니다.#하얀 고리의 눈물은 캐릭터의 공격력 x1.5 +5의 피해를 줍니다.#고리에 적의 탄환이 닿을 시 확률적으로 13초동안 고리를 따라 회전합니다.", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} 적 처치시 적이 얼어붙습니다.#{{Freezing}} 얼어붙은 적은 접촉 시 직선으로 날아가 10방향으로 고드름 눈물을 발사합니다.", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Chargeable}} 공격하지 않으면 눈물을 충전합니다.#공격 시 충전한 눈물을 한번에 발사합니다.", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "캐릭터의 크기가 대폭 작아집니다.", -- Pluto
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.7#캐릭터의 크기가 대폭 작아집니다."
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} 가능한 경우 스테이지에 저주방이 1개 더 생성됩니다.#{{CursedRoom}} 저주방의 구조가 특수하게 변경되며 변경된 저주방에서 {{Coin}}동전이 제공됩니다.", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "{{AngelDevilChanceSmall}} 빨간하트 피격 시 악마방 확률 감소를 일정량 방어해 줍니다.", -- Act of Contrition
	-- Full old Desc: "↑ {{EternalHeart}}이터널하트 +1#↑ {{TearsSmall}}연사 +0.7#{{AngelChanceSmall}} 악마방에서 거래해도 천사방 등장 확률이 제거되지 않습니다.#{{AngelDevilChanceSmall}} 빨간하트 피격 시 악마방 확률 감소를 일정량 방어해 줍니다.#{{Blank}} (스테이지 +40%, 보스방 +15%)"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} 상점에 {{Shop}}/{{BossRoom}}/{{DevilRoom}}/{{AngelRoom}}/{{SecretRoom}} 배열의 아이템과 픽업을 파는 특수한 상점으로 갈 수 있는 사다리가 생성됩니다.#판매 아이템의 배열에 따라 가격이 랜덤하게 결정됩니다:#{{Shop}} 상점: 15~30{{Coin}}#{{BossRoom}} 보스방: 15~30{{Coin}}#{{DevilRoom}} 악마방: 15~50{{Coin}}#{{AngelRoom}} 천사방: 15~50{{Coin}}#{{SecretRoom}} 비밀방: 15~99{{Coin}}", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "{{Battery}} 랜덤 배터리 픽업을 2~4개 드랍합니다.", -- Battery Pack
	-- Full old Desc: "{{Battery}} 획득 시 액티브 아이템 충전량을 모두 충전합니다.#{{Battery}} 랜덤 배터리 픽업을 2~4개 드랍합니다."
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "장애물 근처에서 사용 시 장애물을 들며 공격방향으로 던질 수 있습니다.#장애물을 든 상태에서 다른 방으로 이동할 수 있습니다.#던진 장애물에 맞은 적은 40의 피해를 받습니다.", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "블랙홀은 접촉한 적에게 초당 공격력 x0.3의 피해를 줍니다.", -- Ocular Rift
	-- Full old Desc: "공격 시 5%의 확률로 2초간 적/탄환 및 픽업을 끌어들이는 블랙홀이 생성됩니다.#{{LuckSmall}} 행운 15 이상일 때 20% 확률#블랙홀은 접촉한 적에게 초당 공격력 x0.3의 피해를 줍니다."
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "주변에 적이 있을 때 랜덤 방향으로 공격력 3.5 또는 5.25의 눈물을 발사합니다.", -- Boiled Baby
	-- Full old Desc: "주변에 적이 있을 때 랜덤 방향으로 공격력 3.5 또는 5.25의 눈물을 발사합니다."
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "{{Freezing}} 공격방향으로 공격력 3.5의 확률적으로 적을 얼리는 공격이 나갑니다.#{{Freezing}} 얼어붙은 적은 접촉 시 직선으로 날아가며 6방향으로 고드름 눈물을 발사합니다.", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "사용 시 그 방의 아이템을 다른 아이템으로 바꾸거나;#{{ArrowGrayRight}} 25%의 확률로 아이템이 사라집니다.", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "피격 시 근처의 적에게 착지 후 45의 피해를 주며 직선 방향으로 충격파를 일으킵니다.#{{ArrowGrayRight}} 착지 후 그 방에서 적을 따라다니며 접촉한 적에게 초당 6.5의 피해를 줍니다.", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "사용 시 주변 적에게 피해를 주고 적을 밀쳐냅니다.#충전량에 상관없이 사용할 수 있으며 충전량 한칸 당 범위와 공격력이 28 증가합니다.#{{Battery}} 피격 시 충전량을 한칸 충전합니다.", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "캐릭터의 뒤를 따라다닙니다.#적에게 맞을 시 사라지고 스테이지 진입 시 재소환됩니다.#영혼이 사라지지 않은 상태에서 스테이지 진입 시 아래 중 하나 드랍:#{{ArrowGrayRight}} {{EternalHeart}}이터널하트 2개#{{ArrowGrayRight}} {{SoulHeart}}소울하트 3개#{{ArrowGrayRight}} {{TreasureRoom}}보물방 아이템#{{ArrowGrayRight}} {{AngelRoom}}천사방 아이템", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "폭탄이 터질 때 터진 자리에 15초간 빨간 장판이 생깁니다.#장판은 지상의 적에게 초당 20의 피해를 줍니다.", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}}최대 체력 +1#↑ {{HealingRed}}빨간하트 +4#폭탄이 터질 때 터진 자리에 15초간 빨간 장판이 생깁니다.#장판은 지상의 적에게 초당 20의 피해를 줍니다.#!!! 폭탄이 0개일 때 체력 반칸을 소모해 폭탄을 설치할 수 있습니다."
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "캐릭터가 피격되기 직전 방귀를 뀌어 근처의 적과 탄환을 밀쳐냅니다.#{{ArrowGrayRight}} 방귀를 뀌면 비활성화되며 캐릭터가 접촉 시 다시 활성화됩니다.#{{TimerSmall}} (접촉 쿨타임 2초)", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "{{LuckSmall}} 행운 10 이상일 때 50% 확률", -- Bird's Eye
	-- Full old Desc: "공격 시 8%의 확률로 공격력 x2 ~ x4의 불꽃을 날립니다.#불꽃은 10초 후, 탄환 4회 방어, 혹은 적에게 4번 피해를 주면 사라집니다.#{{LuckSmall}} 행운 10 이상일 때 50% 확률"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 619] = "획득한 캐릭터에 따라 효과가 달라집니다.", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "{{ArrowGrayRight}} 증가한 공격력은 1초마다 -0.12씩 감소합니다.#{{ArrowGrayRight}} 공격력 감소 도중 적 처치시 공격력 +0.12 회복", -- Red Stew
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +21.6#{{HealingRed}} 체력을 모두 회복합니다.#{{ArrowGrayRight}} 증가한 공격력은 1초마다 -0.12씩 감소합니다.#{{ArrowGrayRight}} 공격력 감소 도중 적 처치시 공격력 +0.12 회복"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "사용 시 {{ColorCyan}}모든 플레이어 캐릭터를 초기화, 소지 중인 아이템을 모두 제거{{CR}}하고 기원의 방으로 이동합니다.#{{ArrowGrayRight}} 사용한 캐릭터의 제거한 아이템의 개수만큼 랜덤 아이템 3개 중 하나를 선택할 수 있는 회수가 주어집니다.#{{ArrowGrayRight}} 기원의 방에서 나가면 다음 스테이지로 이동합니다.", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "사용 시 열쇠를 1개 소모해 공격방향으로 공격력 x5 +30의 열쇠를 날립니다.#열쇠는 적에게 피해를 주거나 잠긴 문이나 {{SecretRoom}}비밀방을 열거나 장애물을 부술 수 있습니다.#열쇠로 적 처치 시 일정 확률로 상자의 내용물을 드랍합니다.", -- Sharp Key
	-- Full old Desc: "↑ {{Key}}열쇠 +5#사용 시 열쇠를 1개 소모해 공격방향으로 공격력 x5 +30의 열쇠를 날립니다.#열쇠는 적에게 피해를 주거나 잠긴 문이나 {{SecretRoom}}비밀방을 열거나 장애물을 부술 수 있습니다.#열쇠로 적 처치 시 일정 확률로 상자의 내용물을 드랍합니다."
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}", -- Mega Mush
	-- Full old Desc: "!!! 사용 시 30초 동안 캐릭터의 크기가 대폭 커지며;#{{ArrowGrayRight}} {{DamageSmall}}공격력 배율 x4#{{ArrowGrayRight}} {{RangeSmall}}사거리 +2#{{ArrowGrayRight}} {{TearsSmall}}연사 배율 x0.4#{{ArrowGrayRight}} 무적 상태가 되며 장애물을 부술 수 있습니다."
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 626] = "{{MotherSmall}} 완성 시 공격방향으로 초당 25의 피해를 주는 칼을 날릴 수 있으며 특정 스테이지로 가는 빨간 문을 열 수 있습니다.", -- Knife Piece 1
	-- Full old Desc: "다른 칼조각과 조합하여 완성 가능#{{MotherSmall}} 완성 시 공격방향으로 초당 25의 피해를 주는 칼을 날릴 수 있으며 특정 스테이지로 가는 빨간 문을 열 수 있습니다."
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC627}}#The knife can open a door made of flesh"

	[C_ID .. 627] = "{{MotherSmall}} 완성 시 공격방향으로 초당 25의 피해를 주는 칼을 날릴 수 있으며 특정 스테이지로 가는 빨간 문을 열 수 있습니다.", -- Knife Piece 2
	-- Full old Desc: "다른 칼조각과 조합하여 완성 가능#{{MotherSmall}} 완성 시 공격방향으로 초당 25의 피해를 주는 칼을 날릴 수 있으며 특정 스테이지로 가는 빨간 문을 열 수 있습니다."
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "사용 시 아이작의 모든 아이템이 있는 방으로 이동합니다.#{{ArrowGrayRight}} 아이템 하나 획득 시 원래 있던 장소로 돌아갑니다.#!!! 해금하지 않은 아이템은 등장하지 않습니다.", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "캐릭터의 주위를 돌며 적의 탄환이 있는 방향으로 공격력 3의 탄환을 막는 눈물을 발사합니다.", -- Bot Fly
	-- Full old Desc: "캐릭터의 주위를 돌며 적의 탄환이 있는 방향으로 공격력 3의 탄환을 막는 눈물을 발사합니다."
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "사용 시 그 방의 적을 0.4배의 체력을 가진 적 2마리로 나눕니다.#하위 분할 적은 그대로 분할하며, 분할이 불가능한 경우 25의 피해를 줍니다.", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "캐릭터가 적 및 장애물에 의한 상태이상 효과에 면역이 됩니다.", -- Evil Charm
	-- Full old Desc: "↑ {{LuckSmall}}행운 +2#캐릭터가 적 및 장애물에 의한 상태이상 효과에 면역이 됩니다."
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "방 안에 랜덤 위치에 붉은 균열이 생성됩니다.#균열에 닿을 시 유령이 나와 적에게 돌진해 공격력 x2의 피해를 줍니다.", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "소지중일 때 인형이 공격방향으로 이동하며 접촉한 적에게 초당 3의 피해를 줍니다.#사용 시 캐릭터와 인형의 위치를 서로 바꾸며;#{{ArrowGrayRight}} 바꾼 위치에 있는 적에게 40 + 공격력 x3.5의 피해를 줍니다.", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "{{ColorOrange}}사용 시{{CR}} 소지중인 아이템과 능력치가 유지된 상태로 게임을 다시 시작합니다.#!!! 이하의 항목이 초기화됨:#{{ArrowGrayRight}} {{AngelDevilChance}}악마 거래 여부 및 회수#{{ArrowGrayRight}} {{PlanetariumChanceSmall}}보물방/천체관 방문 여부 및 회수#{{ArrowGrayRight}} {{DonationMachine}}기부기계 상태#{{ArrowGrayRight}} {{Timer}}게임 시간은 {{ColorOrange}}초기화되지 않음{{CR}}", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "밀쳐낸 적이 벽 및 장애물에 부딪히면 추가 피해를 받습니다.", -- Knockout Drops
	-- Full old Desc: "10%의 확률로 적을 강하게 밀쳐내고 혼란시키는 공격이 나갑니다.#{{LuckSmall}} 행운 9 이상일 때 100% 확률#밀쳐낸 적이 벽 및 장애물에 부딪히면 추가 피해를 받습니다."
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "사용 시 공격방향으로 지우개를 발사합니다.#지우개에 맞은 적은 해당 게임에서 제외되어 다시 등장하지 않습니다.#스테이지 당 한번 사용할수 있으며 배터리나 방 클리어로 충전되지 않습니다.", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "적 처치시 항아리에 불꽃이 저장됩니다.#사용 시 저장된 불꽃을 소모해 공격방향으로 공격력 초당 22.5의 불꽃을 발사합니다.#!!! 불꽃의 공격력: 22.5 + (4.5 * 스테이지)", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "적이 있는 방에 입장 시 캐릭터의 뒤에 눈물끈이 생성됩니다.#눈물끈에 닿은 적은 3.5의 피해를 받습니다.", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "사용 시 {{Heart}}/{{BoneHeart}}1칸 또는 {{SoulHeart}}2칸을 {{BrokenHeart}}소지 불가능 체력 1칸으로 바꾸며 그 방의 아이템을 하나 생성합니다.#사용 회수에 비례하여 {{Collectible642}} 미소지 시 일정 확률로 등장하는 아이템이 {{Collectible642}}으로 교체됩니다.#!!! {{ColorSilver}}1회:33%/2회:50%/3회+:100%{{CR}}#{{ArrowGrayRight}} 그 스테이지에 판매 중이지 않은 Magic Skin이 있을 경우 교체 확률 대폭 감소", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "{{Chargeable}} 공격키를 2.5초 이상 누르면 충전되며 공격키를 떼면 일직선 방향으로 레이저를 발사합니다.#레이저는 다단히트로 적에게 최대 15번의 피해를 줍니다.", -- Revelation
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +2#비행 능력을 얻습니다.#{{Chargeable}} 공격키를 2.5초 이상 누르면 충전되며 공격키를 떼면 일직선 방향으로 레이저를 발사합니다.#레이저는 다단히트로 적에게 최대 15번의 피해를 줍니다."
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ 가장 낮은 능력치가 특정 수치만큼 증가합니다.#{{ArrowGrayRight}} {{DamageSmall}}:+1/{{TearsSmall}}:+0.5/{{SpeedSmall}}:+0.2/{{RangeSmall}}:+2.5#가장 적게 소지중인 픽업을 특정 개수만큼 드랍합니다.", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "캐릭터 주위를 돌며 적의 탄환을 막고 접촉한 적에게 3.5의 피해를 줍니다.#완전히 파괴된 경우 5초 후 재생성됩니다.", -- Tinytoma
	-- Full old Desc: "캐릭터 주위를 돌며 적의 탄환을 막고 접촉한 적에게 3.5의 피해를 줍니다.#적과 3번 접촉 시 2조각으로 분열하며 2번 분열 시 파괴되어 파란 아군 거미를 3마리 소환합니다.#완전히 파괴된 경우 5초 후 재생성됩니다."
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "폭탄이 터질 때 폭탄 기준 4방향으로 적에게 최대 160의 피해를 주는 혈사포를 발사합니다.", -- Brimstone Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때 폭탄 기준 4방향으로 적에게 최대 160의 피해를 주는 혈사포를 발사합니다."
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "!!! 방을 클리어해도 액티브 아이템이 충전되지 않습니다.#{{Battery}} 적에게 일정량의 피해를 줄 때마다 액티브 충전량을 한칸 충전합니다.#!!! 한 칸 충전에 필요한 피해량:#{{Blank}} (스테이지 * 20) + 40#{{Battery}} {{ColorYellow}}충전 순서{{CR}} : 앞쪽>뒷쪽>픽업슬롯", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "방 안을 돌아다니며 대각선 방향으로 공격력 3의 눈물 다발을 발사합니다.", -- Fruity Plum
	-- Full old Desc: "방 안을 돌아다니며 대각선 방향으로 공격력 3의 눈물 다발을 발사합니다.#접촉한 적에게 초당 6의 피해를 줍니다."
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "사용 시 10초 동안 아군 Baby Plum 보스를 소환합니다.#Baby Plum 보스는 한바퀴 회전 > 찍기 > 대각선 방향으로 눈물 발사 후 떠납니다.", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "{{BossRoom}} 오라를 가지고 보스방이 있는 곳으로 이동합니다.#캐릭터가 오라 안에 있을 시:#{{ArrowGrayRight}} {{DamageSmall}}공격력 배율 x1.2#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "{{BossRoom}} 오라를 가지고 보스방이 있는 곳으로 이동합니다.#캐릭터가 오라 안에 있을 시:#{{ArrowGrayRight}} {{DamageSmall}}공격력 배율 x1.2#{{ArrowGrayRight}} {{DamageSmall}}최종 공격력 배율 x1.5#{{ArrowGrayRight}} {{TearsSmall}}연사 배율 x2.5#{{ArrowGrayRight}} 피해를 확률적으로 무시하고 공격에 유도 효과가 생깁니다."
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "스스로 움직일 수 없으며 캐릭터가 접촉할 시 직선으로 미끄러지며 이동합니다.#{{Freezing}} 적과 접촉 시 17.5의 빙결 피해를 주고 적의 탄환을 막습니다.", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "소지중일 때 적 처치시 그 자리에 붉은 귀신을 소환합니다.#사용 시 붉은 귀신이 폭파되며 주변의 적에게 피해를 주며, 체력이 50% 이하인 유령 타입의 적들 및 보스를 즉사시킵니다.", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{DamageSmall}} 능력치 감소 알약 사용 시 공격력이 +0.6 증가합니다.", -- False PHD
	-- Full old Desc: "↑ {{BlackHeart}}블랙하트 +1#{{Pill}} 알약을 1개 드랍합니다.#사용하지 않은 알약의 효과를 알 수 있습니다.#긍정적인 알약과 중립적인 알약 효과가 등장하지 않습니다.#{{DamageSmall}} 능력치 감소 알약 사용 시 공격력이 +0.6 증가합니다.#{{BlackHeart}} 비 능력치 관련 부정 알약 사용 시 블랙하트를 1개 드랍합니다."
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "소지중일 때 룰렛이 캐릭터 주위를 돌며 적의 탄환을 막아주고 접촉한 적에게 초당 10.5의 피해를 줍니다.#{VAR:ONUSEEFFECT}#{{ArrowGrayRight}} 룰렛과 모든 공전형 패밀리어의 공전 속도와 피해량이 증가하며 파란 아군 거미/파리가 무적이 됩니다.", -- Spin to Win
	-- Full old Desc: "소지중일 때 룰렛이 캐릭터 주위를 돌며 적의 탄환을 막아주고 접촉한 적에게 초당 10.5의 피해를 줍니다.#!!! 사용중일 때:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도(상한) +0.5#{{ArrowGrayRight}} 룰렛과 모든 공전형 패밀리어의 공전 속도와 피해량이 증가하며 파란 아군 거미/파리가 무적이 됩니다."
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "!!! 현재 {{Collectible577}}Damocles 효과 발동 중:#모든 방의 아이템이 2배로 나옵니다.#상자/판매 아이템은 영향을 받지 않습니다.#패널티 피격 시 그 이후부터 캐릭터가 즉사할 확률이 생깁니다.#!!! 즉사확률: 4프레임 당 1/10000", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "적 처치시 적 기준 랜덤 방향으로 눈물을 흩뿌립니다.#!!! 눈물효과는 처치한 시점에서의 상태이상의 영향을 받습니다.", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "피격 시 꼬마 아이작 패밀리어를 소환합니다.#꼬마 아이작은 캐릭터와 함께 이동하며 적이 있는 방향으로 공격력 1.35의 눈물을 발사합니다.", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "스테이지 첫 방에 색상에 따라 특정한 장소로 이동할 수 있는 포탈이 생성됩니다.#{{ArrowGrayRight}} {{ColorRed}}빨강: {{CR}}{{BossRoom}}보스방#{{Blank}} {{ColorBlue}}파랑: {{CR}}{{SecretRoom}}비밀방#{{Blank}} {{ColorYellow}}노랑: {{CR}}{{TreasureRoom}}보물방#방을 나가면 포탈이 사라집니다.", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "적 처치시 그 자리에 고정된 패밀리어를 소환합니다.#패밀리어는 방당 5마리까지 소환할 수 있습니다.", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "6초마다 1초간 무적 상태가 됩니다.#무적 상태일 때 적과 접촉 시 40의 피해를 줍니다.", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "모든 아이템이 음식(체력 증가) 아이템과 1초마다 전환되며 두 아이템 중 하나를 선택할 수 있습니다.#음식 아이템 획득 시 30초간 {{DamageSmall}}증발성 공격력 +3.6, 영구적으로 {{SpeedSmall}}이동속도 -0.03 감소, 특정한 능력치 2개가 증가합니다.", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 체력을 모두 회복합니다.#모든 아이템이 음식(체력 증가) 아이템과 1초마다 전환되며 두 아이템 중 하나를 선택할 수 있습니다.#음식 아이템 획득 시 30초간 {{DamageSmall}}증발성 공격력 +3.6, 영구적으로 {{SpeedSmall}}이동속도 -0.03 감소, 특정한 능력치 2개가 증가합니다."
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "{{Chest}} 상자와 {{GrabBag}}{{BlackSack}}자루 픽업, 장애물의 내용물을 볼 수 있습니다.", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 668] = "!!! 획득 시 역행을 위한 스테이지 재시작#{{ArrowGrayRight}} 역행 스테이지의 특수 방은 이번 게임에서 등장했던 {{BossRoom}}보스방과 {{TreasureRoom}}보물방만 등장합니다.#!!! {{Collectible580}}{{ColorOrange}}Red Key 해금 이후{{CR}}: 역행 이전에 {{BossRoom}}/{{TreasureRoom}}에서 버린 장신구는 전부 {{Card78}}Cracked Key로 바뀝니다.", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "방 클리어 보상 픽업이 2개가 나오며;#{{ArrowGrayRight}} 하나를 획득하면 나머지는 사라집니다.", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "{{Heart}} 획득 시 빨간하트 하나를 드랍합니다.#{{Heart}} 빨간하트를 획득할 때마다 아래 중 하나의 능력치 증가:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.02#{{Blank}} {{TearsSmall}}연사 +0.05#{{Blank}} {{DamageSmall}}공격력 +0.1#{{Blank}} {{RangeSmall}}사거리 +0.25#{{Blank}} {{ShotspeedSmall}}탄속 +0.02#{{Blank}} {{LuckSmall}}행운 +0.1", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "체력 거래와 동전 거래가 서로 바뀝니다.", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "악마방 방문 시 캐릭터 위에 십자가가 떠오릅니다.#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "악마방 방문 시 캐릭터 위에 십자가가 떠오릅니다.#악마방에서 아이템이나 픽업을 획득하지 않아 십자가를 유지한 상태에서 스테이지 진입 시:#{{ArrowGrayRight}} {{SoulHeart}}소울하트 +1#{{ArrowGrayRight}} {{DamageSmall}}공격력 +1"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "피격 시 체력이 없을 경우 체력 0.5칸의 원래 캐릭터와 족쇄로 묶인 영혼 캐릭터로 변하며;#{{ArrowGrayRight}} 10초동안 피격당하지 않았을 경우 사망한 자리에서 사망하기 이전 상태로 돌아옵니다.#{{SoulHeart}} 소울하트 획득 시 다시 발동 가능", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "{{Collectible175}} 피격 시 맵에 랜덤 방의 위치를 보여주며 캐릭터가 있는 그 방의 잠겨있는 문을 모두 엽니다.", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "!!! 스테이지 진입 시 빨간하트가 1칸 이하일 경우:#{{ArrowGrayRight}} {{EmptyHeart}}빈 최대 체력 +1", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "방 안에 적이 있을 때 피격 시 2초간 게임 속도가 느려지며;#{{ArrowGrayRight}} 2초간 {{DamageSmall}}공격력/{{TearsSmall}}연사가 크게 증가, 캐릭터가 The Lost(비행, 지형 관통 공격)의 모습으로 바뀝니다.#{{ArrowGrayRight}} 방을 클리어 하거나 피격 시 원래 캐릭터로 돌아옵니다.", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "공격이 태아 발사 공격으로 변경됩니다.#{{Chargeable}} 공격키를 누르고 있으면 태아가 자동으로 충전되며 발사됩니다.#태아는 발사 시 적에게 유도되며 초당 공격력 x2.25의 피해를 줍니다.", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Chargeable}} 공격키를 1초 이상 누르면 충전되며;#{{ArrowGrayRight}} 공격키를 떼면 패밀리어 주위에 검은 고리가 둘러져 접촉한 적에게 초당 52.5의 피해를 줍니다.", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} 공격키를 2.35초 이상 누르면 충전되며 공격키를 떼면 캐릭터의 뒤 방향으로 레이저와 옥수수탄을 발사합니다.#{{ArrowGrayRight}} 레이저는 다단히트로 적에게 최대 초당 공격력 x19의 피해를 줍니다.#{{ArrowGrayRight}} 옥수수탄은 적에게 6의 피해를 줍니다.", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "공격방향으로 날아가며 접촉한 적에게 피해를 주고 픽업에 접촉 시 픽업을 파란 아군 파리로 바꿉니다.#4개의 픽업을 바꿀 시 클리어하지 않은 방으로 이동하는 포탈을 생성합니다.", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "{{Slow}} 4초동안 그 방의 랜덤 적을 붙잡아 초당 8의 피해를 주고 움직이지 못하게 합니다.", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "적 처치시 그 자리에 적의 탄환을 막아주는 일회용 뼛조각을 1~2개 소환합니다.", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "적 처치시 33%의 확률로 유령이 나와 적을 따라다닙니다.#유령은 접촉하는 적에게 초당 공격력 x2의 피해를 주고 7초 후 폭파되어 주변의 적에게 공격력 x3의 피해를 줍니다.", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "{{Collectible584}} 사용 시 위습을 소환합니다.#사용할 때마다 소환하는 위습의 개수가 증가합니다.", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "{{SoulHeart}} 획득 시 소울하트를 1개 드랍합니다.", -- Soul Locket
	-- Full old Desc: "{{SoulHeart}} 획득 시 소울하트를 1개 드랍합니다.#{{SoulHeart}} 소울하트를 획득할 때마다 아래 중 하나의 능력치 증가:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.04#{{Blank}} {{TearsSmall}}연사 +0.1#{{Blank}} {{DamageSmall}}공격력 +0.2#{{Blank}} {{RangeSmall}}사거리 +0.5#{{Blank}} {{ShotspeedSmall}}탄속 +0.04#{{Blank}} {{LuckSmall}}행운 +0.2"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "{{Friendly}} 사용 시 아군 적 하나를 소환합니다.#{{ArrowGrayRight}} 소환된 아군은 캐릭터가 움직이는 방향으로 움직이며 공격방향으로 공격합니다.#!!! 일부 적의 특수 능력은 액티브 아이템 버튼을 눌러야 발동됩니다.", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "사망 시 그 방에서 즉시 체력 0.5, {{SpeedSmall}}이동속도 +0.2에 캐릭터의 크기가 대폭 줄어든 상태로 부활합니다.", -- Inner Child
	-- Full old Desc: "↑ 목숨 +1#사망 시 그 방에서 즉시 체력 0.5, {{SpeedSmall}}이동속도 +0.2에 캐릭터의 크기가 대폭 줄어든 상태로 부활합니다."
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "모든 아이템이 5개의 랜덤 아이템으로 0.2초마다 전환되어 5개의 아이템 중 하나를 선택할 수 있습니다.", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "적과 접촉 시 적을 밀쳐내며 50% 확률로 피해를 무시합니다.#적 탄환에 맞았을 때 50% 확률로 탄환을 반사합니다.", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "{{Quality0}}/{{Quality1}}등급인 아이템이 등장하지 않습니다.#{{Quality2}}등급 아이템이 33% 확률로 다른 아이템으로 변경됩니다.", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "{{DevilRoom}}악마방에 특수한 가시를 생성합니다.#가시에 피격 시 일정 확률로 특정한 보상을 드랍합니다.#!!! 35%: 없음#{{Blank}} 33%: {{DamageSmall}}공격력 +0.5#{{Blank}} 15%: {{Coin}}동전 6개#{{Blank}} 10%: {{BlackHeart}}블랙하트 2개#{{Blank}} 5%: {{DevilRoom}}악마방 아이템#{{Blank}} 2%: Leviathan 세트 ({{BlackHeart}}블랙하트 +2, 비행)", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "방 클리어 시 파리 배리어를 1마리 얻습니다. (최대 16마리)#파리가 탄환을 막으면 파란 아군 파리로 바뀝니다.", -- The Swarm
	-- Full old Desc: "캐릭터 주위를 돌며 적의 탄환을 막는 파리 배리어를 8마리 얻습니다.#방 클리어 시 파리 배리어를 1마리 얻습니다. (최대 16마리)#파리가 탄환을 막으면 파란 아군 파리로 바뀝니다."
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "!!! 피격 시 남은 체력이 없을 경우 체력을 반칸 남기고;#{{ArrowGrayRight}} {{BrokenHeart}}소지 불가능 체력 +2", -- Heartbreak
	-- Full old Desc: "↓ {{BrokenHeart}}소지 불가능 체력 +3#{{BrokenHeart}} 소지 불가능 체력 1칸 당 {{DamageSmall}}공격력 +0.25#!!! 피격 시 남은 체력이 없을 경우 체력을 반칸 남기고;#{{ArrowGrayRight}} {{BrokenHeart}}소지 불가능 체력 +2#{{Collectible35}} 그 방의 적에게 40의 방어 무시 피해를 줍니다."
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "!!! 피격 시 그 스테이지에서:#{{ArrowGrayRight}} {{TearsSmall}}연사(+상한) 증가#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 증가#{{Blank}} (최대 6회: {{SpeedSmall}}:+1.02/{{TearsSmall}}:+3)", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "캐릭터 주위에 하얀 고리가 생깁니다.#고리에 1초간 닿은 적에게 빛줄기가 나와 적에게 3.5의 피해를 입히고 4방향으로 공격력 1.75의 빛줄기를 발사합니다.#피격 시 그 스테이지에서 고리의 크기가 커집니다.#{{Blank}} (최대 10회 적용)", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "{{BossRoom}} 보스방 입장 시 복제 보스가 소환됩니다.#{{Collectible232}} 원본 보스와 복제된 보스 모두 체력이 75%로 감소되며 미세한 둔화에 걸립니다.#{{BossRoom}} 복제된 보스 처치시 보스방 아이템을 추가로 드랍합니다.", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "캐릭터의 양 옆에서 공격방향으로 캐릭터의 공격력 x0.375의 공격을 발사합니다.", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "방 4개 클리어 시 다음 방에서 3.33초 동안 초당 공격력 x15의 대형 혈사포를 발사합니다.", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "{{Card}}카드나 {{Pill}}알약 사용 시 이 아이템 획득 후 사용한 카드나 알약의 효과를 모두 발동합니다.#3회 이상 발동된 효과는 사라집니다.", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "{{DirtyChest}} 스테이지 첫 방에 오래된 잠긴상자를 1개 소환합니다.#{{DirtyChest}} 오래된 상자에는 {{SoulHeart}}/{{Trinket}}장신구/{{AngelRoom}}천사방/엄마아빠 관련 아이템이 등장할 수 있습니다.", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "피격 시 그 스테이지에서 붉은 위습을 소환합니다. (최대 6)#붉은 위습은 공격력 3의 눈물을 발사합니다.", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "사용 시 Esau 상태 ({{BlackHeart}}블랙하트 3, {{DamageSmall}}공격력 +2, 비행, 고유능력 취급)로 전환됩니다.#{{ArrowGrayRight}} 처음 사용 시 Esau 캐릭터는 기존 캐릭터가 갖고 있는 아이템의 개수만큼 랜덤 아이템을 가집니다.#재사용 시 원래 캐릭터로 전환됩니다.#!!! 두 캐릭터는 체력과 아이템을 공유하지 않습니다.", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 704] = "{{Timer}} 폭주 상태에서 적 처치 시 지속 시간 1초 연장 + 처치한 순간 무적", -- Berserk!
	-- Full old Desc: "{{Battery}} 적에게 120 +(40 * 스테이지)의 피해를 주면 충전#{{Timer}} 사용 시 5초동안:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.4#{{ArrowGrayRight}} {{TearsSmall}}연사 배율 x0.5#{{ArrowGrayRight}} {{TearsSmall}}연사(+상한) +2#{{ArrowGrayRight}} {{DamageSmall}}공격력 +3#{{ArrowGrayRight}} 공격이 적의 탄환을 반사하는 휘두르는 뼈 공격으로 변경됩니다.#{{Timer}} 폭주 상태에서 적 처치 시 지속 시간 1초 연장 + 처치한 순간 무적"
	-- English: "{{Battery}} Charges with damage dealt#{VAR:TIMEDEFFECT}#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +1#{{ArrowGrayRight}} 무적 상태가 되며 적과 탄환을 통과할 수 있습니다.#{{ArrowGrayRight}} 통과된 적은 잠시동안 행동불능", -- Dark Arts
	-- Full old Desc: "{{Timer}} 사용 시 1초간 (혹은 공격 시까지):#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +1#{{ArrowGrayRight}} 무적 상태가 되며 적과 탄환을 통과할 수 있습니다.#{{ArrowGrayRight}} 통과된 적은 잠시동안 행동불능#!!! 효과가 끝나면 통과한 적들에게 공격력 x2 +3.5의 피해를 주며;#{{ArrowGrayRight}} 마지막 위치 주변의 적에게 (통과한 적 및 탄환 수 x3.5)의 피해를 줍니다."
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "사용 시 그 방의 아이템을 심연의 파리로 바꿉니다.#심연의 파리는 공격방향으로 돌진하며 접촉한 적에게 초당 공격력 x3의 피해를 줍니다.#원본 아이템에 따라 심연의 파리의 능력이 달라집니다.", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "공격이 오른쪽 눈에서 발사됩니다.", -- Stapler
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +1#공격이 오른쪽 눈에서 발사됩니다."
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "사용 시 바라보는 방향으로 돌진해 접촉한 적을 붙잡으며 조준점을 조종하여 위치를 정합니다.#{{ArrowGrayRight}} 1초 후 정한 위치에 착지해 붙잡은 적에게 50의 피해를 주고 주위에 충격파를 일으킵니다.#캐릭터의 크기에 따라 붙잡은 적에게 추가 피해를 줍니다.", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "사용 시 공격방향으로 주머니를 휘둘러 픽업을 담을 수 있습니다.#픽업을 8개 담았을 때 사용 시 저장된 픽업을 소모하여 정해진 아이템을 제작합니다.#담은 픽업이 희귀할 수록 더 높은 등급의 아이템이 나옵니다.", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "일부 아이템의 뒤쪽에 숨겨진 아이템이 흐리게 표시됩니다.#사용 시 원래 아이템을 숨겨진 아이템으로 바꿉니다.#아이템 획득 후에 사용 시에는 숨겨진 아이템을 생성합니다.#!!! 숨겨진 아이템만 있는 상태에서 방을 나가면 숨겨진 아이템은 사라집니다.", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "사용 시 캐릭터의 주위를 도는 아이템의 모습을 한 위습을 소환합니다.#25%의 확률로 그 방의 배열의 아이템 위습을 소환하며#{{Blank}} 75%의 확률로 {{Collectible402}}랜덤 배열의 아이템 위습을 소환합니다.#위습이 있는 동안 해당 아이템의 효과를 받으며 위습 소멸 시 효과가 사라집니다.#최대 26개까지 소환할 수 있으며 이후 추가 소환 시 가장 먼저 소환된 위습과 효과가 제거됩니다.", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "사용 시 체력 반칸을 깎고 클롯 패밀리어를 1마리 소환합니다.#클롯은 캐릭터와 같이 이동하며 공격방향으로 캐릭터의 공격력 x0.35의 공격을 발사합니다.#클롯의 체력은 시간이 지날수록 서서히 감소합니다.", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "!!! Tainted Soul 전용 :#사용 시 멀리 떨어져 있는 Tainted Forgotten을 캐릭터의 위치로 불러옵니다.#Tainted Forgotten을 집기 전까지 피해를 받지 않습니다.", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "!!! Tainted ??? 전용 :#사용 시 현재 선택된 똥을 보관합니다.#보관한 상태에서 사용 시 보관한 똥을 사용합니다.", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "아이템 및 픽업 구매로 3{{Coin}} 소모 시마다 아래 순서대로 하나씩 증가:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "{{Coin}}동전 3개와 {{Key}}열쇠 1개를 드랍합니다.#아이템 및 픽업 구매로 3{{Coin}} 소모 시마다 아래 순서대로 하나씩 증가:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +0.5#{{Blank}} {{RangeSmall}}사거리 +0.25#{{Blank}} {{SpeedSmall}}이동속도 +0.03"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "방 안에 적이 있을 때 때때로 장애물에서 파란 아군 거미가 소환됩니다.#장애물 파괴 시 파란 아군 거미를 0~2마리 소환합니다.", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} 사용 시 상점 품목(아이템 또는 픽업)을 소환합니다.#!!! 소환된 상점 품목은 구매해야 획득할 수 있습니다.", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "충전량에 상관없이 사용할 수 있으며 사용 시 충전량에 따라 다른 보상을 드랍합니다.#12칸에서 사용 시 아이작의 모든 랜덤 효과 중 하나를 발동합니다.#!!! 충전량에 따른 보상:#{{ArrowGrayRight}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "등장하는 아이템이 2~6개의 효과와 발동 조건이 혼합된 오류 아이템으로 바뀝니다.#{{Burning}} {{Petrify}} 획득 시 그 방의 적에게 일정 시간동안 석화+화상을 입힙니다.", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "{{Chained}} 사용 시 가장 가까운 적을 5초간 움직이지 못하게 만듭니다.#다시 사용하여 사슬을 강제로 끊을 수 있습니다.", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "사용 시 그 방의 아이템을 코드 앞번호의 아이템으로 바꿉니다.#!!! 해금하지 않은 아이템과 현재 게임에서 등장할 수 없는 아이템은 등장하지 않습니다.", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} 피격 시 1.5초 후 사라지는 빨간하트를 드랍합니다.", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "{{Player25}} 적에게 일정량의 피해를 주고 공격키를 떼면 Tainted ???의 똥 중 하나를 사용합니다:#{{ArrowGrayRight}} {{PoopSpell1}}{{PoopSpell2}}{{PoopSpell3}}{{PoopSpell4}}{{PoopSpell5}}{{PoopSpell6}}{{PoopSpell7}}랜덤 똥을 들고 던지거나#{{ArrowGrayRight}} {{PoopSpell9}}방귀 or {{PoopSpell8}}갈색 장판 생성#{{ArrowGrayRight}} {{PoopSpell10}}폭탄을 들고 던지거나 {{PoopSpell11}}5개의 점화된 폭탄을 생성합니다.", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "공격키를 두번 누르면 재채기를 합니다.#재채기한 방향의 적에게 공격력 x1.5의 피해를 주고 적을 강하게 밀쳐냅니다.#{{BrimstoneCurse}} 재채기에 맞은 적은 일정 시간 동안 유황 표식이 걸리며 혈사류 공격에 공격력 x2 +3의 피해를 받습니다.", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "폭탄이 터질 때 유령이 나와 적을 따라다닙니다.#유령은 접촉하는 적에게 초당 공격력 x2의 피해를 주고 10초 후 폭파되어 주변의 적에게 7의 피해를 줍니다.", -- Ghost Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때 유령이 나와 적을 따라다닙니다.#유령은 접촉하는 적에게 초당 공격력 x2의 피해를 주고 10초 후 폭파되어 주변의 적에게 7의 피해를 줍니다."
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "사용 시 공격방향으로 태아를 발사해 접촉한 적에게 공격력 x3의 피해를 줍니다.#태아는 그 방에서 캐릭터와 연결되어 공격방향으로 움직이며 적을 향해 공격력 x0.75의 캐릭터와 같은 공격을 발사합니다.", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "사용 시 공격방향으로 캐릭터의 머리를 분리시켜 던집니다.#분리될 경우 머리로만 공격이 가능합니다.#몸이 머리와 닿거나 아이템 재사용 시 원래 상태로 돌아옵니다.", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} 획득 시 랜덤 룬을 하나 드랍합니다.", -- Mom's Ring
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +1#{{Rune}} 획득 시 랜덤 룬을 하나 드랍합니다."
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} 장애물 파괴 시 33% 확률로 동전을 드랍합니다.", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} 똥 오브젝트에서 동전이 나올 확률이 20% 증가합니다.#{{Poison}} 동전 획득 시 적을 밀쳐내는 독성 방귀를 뀝니다.", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "!!! 방 입장 시 25%의 확률로 그 방에서 아래 중 랜덤 버섯 아이템 효과를 얻습니다:#{{ArrowGrayRight}} {{Collectible12}}{{Collectible71}}{{Collectible121}}{{Collectible120}}{{Collectible342}}{{Collectible398}}", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible318}} 피격 시 확률적으로 그 방에서 Gemini 패밀리어를 소환합니다.", -- Umbilical Cord
	-- Full old Desc: "{{HalfHeart}} 방 입장 시 빨간하트가 반칸 이하일 때 {{Collectible100}}Little Steven을 소환합니다.#{{Collectible318}} 피격 시 확률적으로 그 방에서 Gemini 패밀리어를 소환합니다."
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "{{Collectible35}} 피격 시 5%의 확률로 그 방의 적에게 80의 피해를 줍니다.#{{LuckSmall}} 행운 60 이상일 때 50% 확률#↑ {{Collectible35}} 블랙하트/The Necronomicon/The Devil의 공격력 +40", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} 동전 획득 시 25% 확률로 빨간하트를 반칸 드랍합니다.#동전 가치가 높을수록 확률 증가", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} 동전 획득 시 25% 확률로 폭탄을 하나 드랍합니다.#동전 가치가 높을수록 확률 증가", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} 동전 획득 시 25% 확률로 열쇠를 하나 드랍합니다.#동전 가치가 높을수록 확률 증가", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "{{Confusion}} 때때로 그 방의 적들이 혼란에 걸립니다.#(해금 필요) 흡수하지 않은 경우 Depths 2(6 스테이지)에서 장신구를 소모하여 Home 스테이지로 진입할 수 있습니다.", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "각 능력치가 캐릭터 기본 능력치보다 높을 시 각 능력치가 20% 증가합니다.", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "<MISSING>", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} Womb/Corpse 스테이지에서 상점이 등장합니다.", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} Womb/Corpse 스테이지에서 보물방이 등장합니다.", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "{{HealingRed}} 스테이지 진입 시 최대 체력의 절반을 회복합니다.#{{HealingRed}} 체력이 최대 체력의 절반을 넘을 시 체력을 반칸 회복합니다.", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{HalfSoulHeart}} 동전 획득 시 17% 확률로 소울하트를 반칸 드랍합니다.#동전 가치가 높을수록 확률 증가", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "방 입장 시 25% 확률로 그 방에서 랜덤 주사기 아이템 효과를 얻습니다.", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "!!! 폭탄이 터지는 속도가 빨라집니다.", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "방귀의 크기와 범위가 증가합니다.", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "{{Bomb}} 잠긴 문과 상자를 폭발로 열 수 있습니다.", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "스테이지 진입 시 첫 방에 전 스테이지에 남겨진 픽업을 최대 4개 드랍합니다.", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "액티브 아이템 사용 시 사용한 액티브 아이템이 다른 액티브 아이템으로 바뀝니다.#!!! 다른 액티브 아이템으로 바뀔 시 아이템의 충전량이 전부 소진됩니다.", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "특수한 효과의 공격이 나갈 확률이 행운 +4만큼 증가합니다.#!!! 눈물 외 다른 무기의 경우 효과 없음", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "빨간하트와 접촉 시 일정 확률로 빨간하트가 파란 아군 거미 1~4마리로 바뀝니다.#!!! 확률: 기본 50%#{{Blank}} 체력이 모두 차있을 때 100%", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "패밀리어의 연사가 2배로 증가합니다.", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} 스테이지 진입 시 위습을 4마리 소환합니다.", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "공격이 적이 있는 방향을 향해 직선으로 날아갑니다.", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "!!! 패널티 피격 시 사라집니다.", -- Perfection
	-- Full old Desc: "↑ {{LuckSmall}}행운 +10#!!! 패널티 피격 시 사라집니다."
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{TreasureRoom}} 보물방이 체력 거래가 필요한 {{DevilRoom}}악마방 아이템이 나오는 붉은 보물방으로 대체됩니다.", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "{{Battery}} 동전 획득 시 17%의 확률로 액티브 아이템 충전량을 한칸 충전합니다.#동전 가치가 높을수록 확률 증가", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "패밀리어가 캐릭터의 주위를 돕니다.", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "액티브 아이템 충전량이 최대치일 때 피격 직전에 액티브 아이템을 사용합니다.", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "열쇠로 잠긴 방에 들어갈 때 열쇠를 소모하지 않으며 특수한 적이 있는 파란 방 클리어 후 입장할 수 있습니다.", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "모든 바닥, 상자, 문, 바위의 가시를 제거합니다.#!!! 희생방의 가시도 제거합니다.", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "↑ {{PlanetariumChanceSmall}}첫 천체방 확률 +15%#{{PlanetariumChanceSmall}} Womb/Corpse 스테이지에서 천체방이 등장할 수 있습니다.", -- Telescope Lens
	-- Full old Desc: "↑ {{PlanetariumChanceSmall}}천체방 확률 +9%#↑ {{PlanetariumChanceSmall}}첫 천체방 확률 +15%#{{PlanetariumChanceSmall}} Womb/Corpse 스테이지에서 천체방이 등장할 수 있습니다."
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "방 입장 시 25%의 확률로 그 방에서 랜덤 엄마 아이템 효과를 얻습니다.", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "방 입장 시 50%의 확률로 그 방에서 랜덤 일회용 주사위 아이템 픽업을 얻습니다.", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Cathedral 스테이지에서 {{TreasureRoom}}보물방과 {{Shop}}상점이 등장합니다.", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} 소지중일 때 최대 체력 +1", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "피격 시 소지중인 픽업 중 2가지를 드랍합니다.", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} 황금상자가 드랍하는 픽업의 양이 종류와 상관없이 최소 2개가 보장됩니다.", -- Gilded Key
	-- Full old Desc: "↑ {{Key}}열쇠 +1#{{GoldenChest}} 낡은상자, 메가상자를 제외한 모든 상자가 황금상자로 교체됩니다.#{{GoldenChest}} 황금상자가 드랍하는 픽업의 양이 종류와 상관없이 최소 2개가 보장됩니다.#{{GoldenChest}} 황금상자에서 {{Rune}}룬의 등장 확률이 증가하며 {{Pill}}알약과 {{Battery}}배터리가 등장할 수 있습니다."
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} 스테이지 첫 방에 자루 픽업을 하나 드랍합니다.", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Sheol 스테이지에서 {{TreasureRoom}}보물방과 {{Shop}}상점이 등장합니다.", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} 방 클리어 시 50%의 확률로 Azazel 캐릭터로 바뀝니다.#다음 방 클리어 후 이동시 원래 캐릭터로 돌아옵니다.", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "모든 Dip 몬스터가 아군이 됩니다.#방 클리어 시 똥 패밀리어를 1마리 소환합니다.#똥 패밀리어는 적의 탄환을 막으며 적에게 접촉 시 초당 6의 피해를 줍니다.", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "폭탄 설치 시 1개의 폭탄을 추가로 설치합니다.", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "Womb/Corpse 스테이지부터 열쇠와 동전이 다른 픽업으로 대체됩니다.", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "방 입장 시 50%의 확률로 그 방에서 랜덤 패시브 아이템의 효과를 얻습니다.", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "{{Friendly}} 방 클리어 시 25%의 확률로 아군 해골 적을 소환합니다.", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} 스테이지 진입 시 뼈하트 +1", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "소지중일 때 Guppy 세트에 포함됩니다.", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{RedRoom}} 방 클리어 시 33%의 확률로 가까운 벽에 빨간방으로 가는 문이 생성됩니다.#빨간방은 일반방 또는 특수방의 구조로 생성될 수 있습니다.#빨간방 안에서는 또다른 빨간방 생성 확률이 감소합니다.", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50%의 확률로 체력 거래 아이템을 동전 거래로 바꿉니다.", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "동전 획득 시 랜덤 방으로 순간이동합니다.", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "!!! 일회용#체력 거래 시 체력 대신 장신구를 소모합니다.#!!! {{DevilRoom}}악마방/{{Collectible292}}Satanic Bible 거래 시 여전히 악마 거래로 취급됩니다.", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "{{DevilRoom}} 악마방에서 Krampus 보스가 등장하지 않습니다.#{{DevilRoom}} 악마방 구조가 특수하게 변경되며 악마방에서 적들과 {{BlackHeart}}블랙하트의 등장 확률 및 빈도가 높아집니다.", -- Number Magnet
	-- Full old Desc: "↑ {{DevilChanceSmall}}악마방 확률 +10%#{{DevilRoom}} 악마방에서 Krampus 보스가 등장하지 않습니다.#{{DevilRoom}} 악마방 구조가 특수하게 변경되며 악마방에서 적들과 {{BlackHeart}}블랙하트의 등장 확률 및 빈도가 높아집니다."
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "{{Timer}} 30분이 지나도 ???(Blue Womb) 스테이지로 갈 수 있습니다.", -- Strange Key
	-- Full old Desc: "{{Timer}} 30분이 지나도 ???(Blue Womb) 스테이지로 갈 수 있습니다.#{{Collectible297}}Pandora's Box 사용 시 장신구가 사라지며 랜덤 배열의 아이템 6개를 생성합니다."
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "캐릭터와 같이 이동하며 공격방향으로 캐릭터의 공격과 같은 공격을 발사하는 클롯을 하나 소환합니다.", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "{{ChallengeRoom}} 도전방 클리어 시 상자를 드랍합니다.#{{ChallengeRoom}} 보스 도전방 클리어 시 아이템을 생성합니다.", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "피격 시 50% 확률로 캐릭터의 위치에 공격력 185의 폭발을 일으킵니다.", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "패밀리어가 캐릭터가 움직이는 방향으로 이동합니다.", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "캐릭터와 같이 이동하며 공격방향으로 캐릭터의 공격력 x0.5의 공격을 발사합니다.#적에게 맞을 시 사라지고 다음 스테이지에서 재소환됩니다.", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "액티브 아이템 사용 시 충전량이 1~2인 랜덤 액티브 아이템의 효과를 함께 발동합니다.#{{Blank}} (충전량이 없는 액티브 아이템의 경우 방당 1회 한정)", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "{{Collectible584}} {{AngelRoom}}천사방 입장 시 위습을 5마리 소환합니다.#{{Collectible584}} 거지에게 기부 시 25%의 확률로 위습을 소환합니다.", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "방 입장 시 50% 확률로 그 방에서 랜덤 패밀리어 중 하나를 복사합니다.", -- The Twins
	-- Full old Desc: "방 입장 시 50% 확률로 그 방에서 랜덤 패밀리어 중 하나를 복사합니다.#복사할 수 있는 패밀리어가 없다면 {{Collectible8}}Brother Bobby 혹은 {{Collectible67}}Sister Maggy를 대신 소환합니다."
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} 상점에서 패밀리어를 판매합니다.#패밀리어 가격: 10{{Coin}}", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "적 처치시 17%의 확률로 특수한 아군 파리를 소환합니다.", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "특수한 아군 파리를 하나 소환합니다.#아군 파리는 공격방향으로 돌진하며 접촉한 적에게 초당 공격력 x3의 피해를 줍니다.", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50% 확률로 보물방에 가려진 아이템을 추가합니다.#{{TreasureRoom}} 50% 확률로 리펜턴스 추가 스테이지 보물방의 가려진 아이템을 볼 수 있습니다.", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} 석화 상태의 적을 처치 시 적이 얼어붙으며 얼어붙은 적은 접촉 시 직선으로 날아가 6방향으로 고드름 눈물을 발사합니다.", -- Ice Cube
	-- Full old Desc: "{{Petrify}} 방 입장 시 20%의 확률로 랜덤 적을 4초간 석화시킵니다.#{{Freezing}} 석화 상태의 적을 처치 시 적이 얼어붙으며 얼어붙은 적은 접촉 시 직선으로 날아가 6방향으로 고드름 눈물을 발사합니다.#{{LuckSmall}} 행운 40 이상일 때 100% 확률"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "{{Collectible58}} 적 처치시 1초간 무적 상태가 됩니다.#{{Blank}} (최대 5초)", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} 보물방으로 순간이동합니다.#!!! 스테이지에 천체관이 있으면 {{Planetarium}}천체관으로 순간이동합니다.", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 21] = "<MISSING>", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} 그 방의 적과 픽업을 폭탄으로 바꿉니다.", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} 그 방의 적과 픽업을 동전으로 바꿉니다.", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} 그 방의 적과 픽업을 열쇠로 바꿉니다.", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{Heart}} 그 방의 적과 픽업을 하트로 바꿉니다.", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "{{Collectible84}} 다음 스테이지로 가는 다락문을 생성합니다.#{{LadderRoom}} 치장성 타일(풀, 돌 조각 등) 위에 사용 시 사다리방으로 가는 다락문을 생성합니다.(스테이지 당 1회)", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "{{ColorOrange}}캐릭터의 몸통이 바라보는 방향{{CR}}으로 카드를 던지며 카드에 맞은 적은 즉사합니다.#!!! Delirium 및 The Beast는 면역", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HolyMantle}} 피격 시 피해를 1회 무시하는 방어막을 제공합니다.#이 방어막은 중첩되지 않으며 피격 시까지 유지됩니다.", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "랜덤 룬 효과를 발동합니다.#발동되는 룬의 효과는 기존의 열화판의 형태로 발동됩니다.", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "소지중인 하트와 픽업을 모두 드랍합니다.", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "1분간 적과 탄환이 캐릭터에게 가까이 가지 못합니다.", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "{{Collectible550}} 1분간 일정 간격으로 캐릭터의 위치에 엄마발이 두개씩 떨어집니다.", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "{{BossRoom}} (스테이지 +2)의 스테이지의 보스가 있는 보스방으로 순간이동합니다.", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "{{Collectible642}} 사용 시 최대 체력{{Heart}}1 또는 {{SoulHeart}}2를 {{BrokenHeart}}소지 불가능 체력을 1칸으로 바꾸며;#{{ArrowGrayRight}} 그 방의 아이템을 하나 생성합니다.#{{Blank}} (이 카드 사용 시에도 아이템이 Magic Skin으로 대체되지 않음)", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}#{{ArrowGrayRight}} 무적 상태가 되며 움직일 수 없습니다.", -- VII - The Chariot?
	-- Full old Desc: "{{Timer}} 사용 시 10초간:#{{ArrowGrayRight}} {{TearsSmall}}연사 배율 x4#{{ArrowGrayRight}} 무적 상태가 되며 움직일 수 없습니다."
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "{{GoldenChest}} 황금상자를 2~4개 생성합니다.", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "{{Coin}} 그 방의 아이템과 픽업을 없애고 없앤 아이템의 가격만큼 동전을 드랍합니다.", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "{{DiceRoom}} 랜덤 주사위방 효과를 발동합니다.", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Weakness}} 1분간 그 방에서 적의 속도가 느려지며 적에게 주는 피해량이 2배 증가합니다.", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}", -- XII - The Hanged Man?
	-- Full old Desc: "{{Coin}} 30초간 공격이 3발로 나가며 적 처치시 동전을 드랍합니다."
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}} 방에서 죽인 적의 수만큼 일회용 뼛조각 배리어를 생성하며 확률적으로 아군 해골 적을 소환합니다.", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "{{Pill}} 5개의 랜덤 알약을 사용합니다.#!!! {{Collectible251}}Starter Deck의 효과를 무시합니다.", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "{{Collectible33}} The Bible을 사용하며 30초간 비행 상태가 되고 {{Collectible390}}Seraphim 패밀리어를 소환합니다.", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "장애물로 구성된 랜덤 구조를 7번 생성합니다.", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "가장 먼저 획득한 패시브 아이템을 제거하고 그 방의 아이템을 2개 생성합니다.", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} 붉은 특급 비밀방으로 순간이동합니다.", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "뼈하트로 바뀐 최대 체력은 스테이지 진입 시 복원됩니다.", -- XIX - The Sun?
	-- Full old Desc: "{{Timer}} 사용 시 그 스테이지에서:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +1.5#{{ArrowGrayRight}} 비행 상태가 되고 공격이 장애물을 관통합니다.#{{ArrowGrayRight}} {{BoneHeart}} 최대 체력이 뼈하트로 바뀌며 캐릭터 주변이 어두워집니다.#뼈하트로 바뀐 최대 체력은 스테이지 진입 시 복원됩니다."
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} 재입고 기계를 생성합니다.", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "{{LadderRoom}} 사다리방으로 가는 다락문을 생성합니다.", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} 빨간문 테두리 근처에서 사용 시 빨간방으로 가는 문이 생성됩니다.#빨간방은 일반방 또는 특수방의 구조로 생성될 수 있습니다.", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "마지막으로 사용한 카드, 알약, 룬 또는 액티브 아이템의 효과를 발동합니다.", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "그 방의 아이템이 랜덤 아이템과 1초마다 전환되며 두 아이템 중 하나를 선택할 수 있습니다.", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "{{Heart}} 그 방에서 적 처치시 1.5초 후 사라지는 빨간하트를 드랍합니다.", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "{{Collectible175}}+{{Collectible580}} 그 방의 닫혀있는 문을 열며 가능한 경우 방의 각 면의 빨간방으로 가는 문을 모두 엽니다.", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "{{Collectible705}} 사용 시 3초간:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +1.0#{{ArrowGrayRight}} 무적 상태가 되며 적과 탄환을 통과할 수 있습니다.#효과가 끝나면 통과한 적들에게 공격력 x2 +3.5의 피해를 주며;#{{ArrowGrayRight}} 통과한 수만큼 일시적으로 {{DamageSmall}}공격력이 +1 증가합니다.", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "독방귀+똥장판을 8번 뀌고 7개의 똥폭탄을 생성합니다.#똥장판에 서있는 동안 {{DamageSmall}}+1/{{TearsSmall}}+1.5#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "독방귀+똥장판을 8번 뀌고 7개의 똥폭탄을 생성합니다.#똥장판에 서있는 동안 {{DamageSmall}}+1/{{TearsSmall}}+1.5"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "{{Collectible117}} 그 방에서 Dead Bird 패밀리어를 14마리 소환합니다.#Dead Bird는 적을 따라다니며 접촉한 적에게 초당 4의 피해를 줍니다.", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "{{Collectible704}} 사용 시 10초간#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.4#{{ArrowGrayRight}} {{TearsSmall}}연사 배율 x0.5#{{ArrowGrayRight}} {{TearsSmall}}연사(+상한) +2#{{ArrowGrayRight}} {{DamageSmall}}공격력 +3#{{ArrowGrayRight}} 공격이 적의 탄환을 반사하는 휘두르는 뼈 공격으로 변경됩니다.#{{Timer}} 폭주 상태에서 적 처치 시 지속 시간 1초 연장 + 처치한 순간 무적", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "{{Collectible441}} 7.5초 동안 초당 공격력 x15의 대형 혈사포를 발사합니다.", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "사용 시 사망하며 그 자리에서 체력 반칸으로 부활합니다.#소지한 상태에서 사망 시 자동으로 사용됩니다.", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "그 방의 아이템과 픽업을 다른 아이템으로 바꿉니다.#바뀐 아이템의 배열은 랜덤으로 결정됩니다.", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "그 방에서 캐릭터가 The Lost 캐릭터로 바뀝니다.#체력 거래를 무료로 할 수 있으나 나머지 거래 아이템이 사라집니다.#Mausoleum/Gehenna 스테이지를 체력 소모 없이 진입할 수 있습니다.", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "랜덤 패밀리어를 하나 획득합니다.#고유 패밀리어는 중복으로 획득할 수 없습니다.", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "랜덤 효과의 파란 아군 파리를 15마리 소환합니다.", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "그 방에서 뼈하트 3개를 가진 The Forgotten 캐릭터가 2p 플레이어로 소환됩니다.", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "{{Collectible584}} 랜덤 위습을 6마리 소환합니다.", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "그 방에서 최대 체력 1칸, 소울하트 1칸을 가진 Esau 캐릭터가 2p 플레이어로 소환됩니다.#소환된 Esau 캐릭터는 사용한 캐릭터가 소지한 패시브 개수만큼의 새로운 패시브 아이템을 획득합니다.", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "{{Bomb}}폭탄과 {{Key}}열쇠의 개수를 서로 바꿉니다.#{{GoldenBomb}}황금폭탄과 {{GoldenKey}}황금열쇠를 서로 바꿉니다.", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "30초 동안 화면의 화질이 감소합니다.", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} 그 방에서 적과 캐릭터의 속도가 느려집니다.", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "그 방, 30초, 60초마다 총 3번 적과 캐릭터의 속도가 빨라집니다.", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "일반 알약에서 나오지 않는 알약 효과가 랜덤하게 발동됩니다.#사라지기 전까지 무제한으로 사용할 수 있습니다.", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} {{ColorCyan}}그 방의 적{{CR}}을 3초간 중독시킵니다.", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "체력 {{ColorYellow}}2{{CR}}칸의 피해를 받습니다.", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "소지중인 {{Bomb}}폭탄과 {{Key}}열쇠의 개수가 {{ColorCyan}}50% 증가하며{{CR}} 개수를 서로 바꿉니다.#{{GoldenBomb}}황금폭탄과 {{GoldenKey}}황금열쇠를 서로 바꿉니다.", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "캐릭터의 위치에 점화된 {{ColorCyan}}유도성 대형 폭탄 7개{{CR}}를 생성합니다.", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 11)] = "적의 탄환을 막아주는 {{Collectible279}}{{ColorCyan}}대형 파리{{CR}} 한마리를 얻습니다.", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "액티브 아이템 충전량을 모두 충전하고 배터리 픽업을 {{ColorCyan}}3~4{{CR}}개 드랍합니다.", -- 48 Hour Energy!
	-- Full old Desc: "액티브 아이템 충전량을 모두 충전하고 배터리 픽업을 {{ColorCyan}}3~4{{CR}}개 드랍합니다."
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "빨간하트가 한칸이 되며 {{HalfHeart}}빨간하트 픽업을 {{ColorCyan}}4~8{{CR}}개 드랍합니다.", -- Hematemesis
	-- Full old Desc: "빨간하트가 한칸이 되며 {{HalfHeart}}빨간하트 픽업을 {{ColorCyan}}4~8{{CR}}개 드랍합니다."
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "{{ColorYellow}}4초{{CR}}간 캐릭터가 마비 상태가 됩니다.", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "그 방의 일반 적을 {{ColorCyan}}아군으로 만듭니다.{{CR}}", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "사용 시 캐릭터의 주위에 {{ColorCyan}}범위가 매우 큰{{CR}} 노란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 줍니다.", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "눈물이 {{ColorYellow}}60초{{CR}}간 대각선으로 나갑니다.", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "그 방에서 캐릭터의 위치에 똥을 {{ColorCyan}}더 많이{{CR}} 생성합니다.", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMazeSmall}} Maze 저주에 걸리며 방 이동 시 스테이지 안의 다른 방으로 순간이동하거나 두개의 랜덤 방의 위치가 서로 바뀝니다.", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "캐릭터의 크기가 {{ColorCyan}}대폭{{CR}} 커집니다.", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "캐릭터의 크기가 {{ColorCyan}}대폭{{CR}} 작아집니다.", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "그 방의 똥의 개수 {{ColorCyan}}x2{{CR}}만큼 파란 아군 거미를 소환합니다.", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "그 방의 적의 수 {{ColorCyan}}x2{{CR}}만큼 파란 아군 거미2를 소환합니다.", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "{{ColorYellow}}90{{CR}}초 동안 화면의 화질이 감소합니다.", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "{{ColorYellow}}범위가 매우 큰{{CR}} 캐릭터가 미끄러지는 갈색 장판이 생성됩니다.", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "{{ColorCyan}}범위가 매우 큰{{CR}} 적을 {{Slow}}둔화시키는 검은 장판을 생성합니다.", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} 그 방에서 적과 캐릭터의 속도가 느려집니다.", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "{{Timer}} 그 방, 30초, 60초마다 총 2번 적과 캐릭터의 속도가 빨라집니다.", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다.#{{HealingRed}} {{ColorCyan}}장신구 흡수와 동시에 빨간하트 한칸을 회복합니다.{{CR}}", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "바라보는 방향으로 폭발하는 독성 눈물을 {{ColorYellow}}여러 발{{CR}} 발사합니다.", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "마지막으로 사용한 알약을 {{ColorCyan}}대형{{CR}} 알약으로 드랍합니다.", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "랜덤 능력치 두가지가 크게 증가하거나 감소합니다.", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "일반 알약에서 나오지 않는 알약 효과가 랜덤하게 발동됩니다.#사라지기 전까지 무제한으로 사용할 수 있습니다.", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
