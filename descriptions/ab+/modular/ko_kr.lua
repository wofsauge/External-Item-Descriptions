-- This file contains text elements that are used for the modular description system.
-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "공격이 캐릭터가 있는 방향으로 되돌아옵니다.", -- My Reflection
	-- Full old Desc: "↑ {{RangeSmall}}사거리 +1.5#↑ 눈물 높이 +1#↑ {{ShotspeedSmall}}탄속 +0.6#공격이 캐릭터가 있는 방향으로 되돌아옵니다."
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "공격방향으로 공격력 3.5의 눈물을 발사합니다.", -- Brother Bobby
	-- Full old Desc: "공격방향으로 공격력 3.5의 눈물을 발사합니다."
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "파리류 적들이 공격하지 않거나 약해집니다.", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "사망 시 전 방에서 체력이 꽉 찬 상태로 부활합니다.", -- 1up!
	-- Full old Desc: "↑ 목숨 +1#사망 시 전 방에서 체력이 꽉 찬 상태로 부활합니다."
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "중독된 적 처치 시 20% 확률로 {{BlackHeart}}블랙하트를 드랍합니다.", -- The Virus
	-- Full old Desc: "↓ {{SpeedSmall}}이동속도 -0.1#{{Poison}} 적에게 접촉시 적에게 12의 피해를 주고 적을 중독시킵니다.#중독된 적 처치 시 20% 확률로 {{BlackHeart}}블랙하트를 드랍합니다."
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "맵에 특수방의 위치를 표시합니다.#!!! 스테이지 구조 및 비밀방은 표시되지 않습니다.", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "사용 시 그 방에서 비행 능력을 얻습니다.#{{MomBossSmall}}Mom, {{MomsHeartSmall}}Mom's Heart/It Lives 보스에게 사용 시 보스를 즉사시킵니다.#!!! {{SatanSmall}}Satan 보스에게 사용 시 캐릭터가 즉사합니다.", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "사용 시 똥을 싸며 주변의 적을 더 강하게 밀쳐냅니다.#1칸짜리 구덩이 바로 옆에서 똥을 싸고 폭탄으로 터트리면 해당 구덩이를 메울 수 있습니다.", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "사용 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사합니다.", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "{{Petrify}} 사용 시 그 방의 적들을 4초간 멈추게 합니다.", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "사용 시 캐릭터의 위치에 공격력 40의 폭발을 일으킵니다.", -- Kamikaze!
	-- Full old Desc: "사용 시 캐릭터의 위치에 공격력 40의 폭발을 일으킵니다."
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} 사용 시 그 방의 적들을 5초간 캐릭터에게서 도망가게 합니다.", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "사용 시 공격방향으로 공격력 50의 독폭탄을 발사합니다.#{{Poison}} 독폭탄은 캐릭터의 눈물 효과가 적용되며 맞은 적을 중독시킵니다.", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "사용 시 스테이지 안의 랜덤 방으로 순간이동합니다.#!!! 오류방으로는 이동하지 않습니다.", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "↑ 방 클리어 보상이 등장할 확률이 대폭 증가합니다.#야바위와 도박기계의 성공 확률이 증가합니다.", -- Lucky Foot
	-- Full old Desc: "↑ {{LuckSmall}}행운 +1#↑ 방 클리어 보상이 등장할 확률이 대폭 증가합니다.#야바위와 도박기계의 성공 확률이 증가합니다."
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} 사용 시 조준점을 이동시킨 곳으로 공격력 x20의 미사일을 발사합니다.", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "사용 시 공격방향으로 공격력 x2의 레이저포를 발사합니다.", -- Shoop da Whoop!
	-- Full old Desc: "사용 시 공격방향으로 공격력 x2의 레이저포를 발사합니다."
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "{{Damage}} 폭탄 공격력: x5 +30", -- Dr. Fetus
	-- Full old Desc: "↓ {{TearsSmall}}공격 딜레이 x2.5#{{Bomb}} 공격이 폭탄 발사 공격으로 변경됩니다.#{{Damage}} 폭탄 공격력: x5 +30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "픽업이 캐릭터에게 끌려옵니다.", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "{{Room}} 맵에 스테이지 구조를 표시합니다.#!!! 특수방 및 비밀방의 위치는 표시되지 않습니다.", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "사용 시 캐릭터의 주위에 노란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 줍니다.", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "캐릭터 주위를 돌며 접촉하는 적에게 초당 75의 피해를 줍니다.", -- Distant Admiration
	-- Full old Desc: "캐릭터 주위를 돌며 접촉하는 적에게 초당 75의 피해를 줍니다."
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "구덩이 한칸을 지나갈 수 있습니다.", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HealingRed}} 적 13기 처치 시 체력을 반칸 회복합니다.", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "{{Battery}} 액티브 아이템의 최대 충전량이 2배로 증가합니다.#2번 완충된 액티브 아이템은 연속으로 사용할 수 있습니다.", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} 상점에서 판매하는 물품의 가격을 50% 할인합니다.", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "사용 시 방 안에 트롤폭탄 6개를 생성합니다.", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} 사용 시 그 방의 적들을 8초간 둔화시킵니다.", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "공격방향으로 공격력 3.5의 눈물을 발사합니다.", -- Sister Maggy
	-- Full old Desc: "공격방향으로 공격력 3.5의 눈물을 발사합니다."
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "공격이 레이저 공격으로 변경됩니다.#레이저는 사거리 제한이 없으며 적을 관통합니다.", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "↓ {{TearsSmall}}공격 딜레이 x2.5 (최대 충전 기준)#{{Chargeable}} 눈물을 충전하며 발사합니다.#충전 상태에 따라 공격력 배율이 x0.1 ~ x4로 증감합니다.", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 73] = "획득할 때마다 성장합니다.#{{ArrowGrayRight}} 1단계: 캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#{{ArrowGrayRight}} 2단계: 1단계 + 공격방향으로 공격력 3.5의 눈물을 발사합니다.#{{ArrowGrayRight}} 3/4단계: 적을 따라다니며 접촉한 적에게 초당 7/11의 피해를 줍니다.", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "↑ 부정적인 알약 효과가 등장하지 않습니다.", -- PHD
	-- Full old Desc: "↑ {{HealingRed}}빨간하트 +2#{{Pill}} 알약을 하나 드랍합니다.#확인되지 않은 알약의 효과를 알 수 있습니다.#↑ 부정적인 알약 효과가 등장하지 않습니다.#헌혈기 사용 시 동전 1~2개를 추가로 드랍합니다."
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} 비밀방 및 {{SuperSecretRoom}}일급비밀방이 자동으로 열립니다.", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "{{ArrowGrayRight}} 가능한 경우, 그 스테이지의 보스를 4기사로 교체합니다.", -- Book of Revelations
	-- Full old Desc: "{{DevilChanceSmall}} 소지중일 때 악마방 확률 +17.5%#{{SoulHeart}} 사용 시 소울하트 +1#{{ArrowGrayRight}} 가능한 경우, 그 스테이지의 보스를 4기사로 교체합니다."
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "!!! {{Heart}}최대 체력이 1칸이 됩니다.#사망 시 전 방에서 최대 체력 1칸으로 부활합니다.", -- Dead Cat
	-- Full old Desc: "↑ 목숨 +9#!!! {{Heart}}최대 체력이 1칸이 됩니다.#사망 시 전 방에서 최대 체력 1칸으로 부활합니다."
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "!!! 사용 시:#{{ArrowGrayRight}} {{SoulHeart}}소울하트 +1#{{Timer}} 사용 시 그 방에서:#{{{ArrowGrayRight}} {DamageSmall}}공격력 +0.3#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 -0.2#{{ArrowGrayRight}} 접촉한 적에게 피해를 입히며 장애물을 부술 수 있습니다."
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "사용 시 다음 스테이지로 가는 다락문을 생성합니다.#{{ArrowGrayRight}} 10%의 확률로 {{LadderRoom}}사다리방으로 가는 다락문을 생성합니다.", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "사용 시 Monstro가 랜덤 적에게 떨어져 120의 피해를 줍니다.#!!! 적이 없을 때 사용 시 캐릭터의 위치로 떨어집니다.", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "공격방향으로 돌진해 접촉하는 적에게 초당 52.5의 피해를 줍니다.", -- Little Chubby
	-- Full old Desc: "공격방향으로 돌진해 접촉하는 적에게 초당 52.5의 피해를 줍니다."
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "캐릭터가 있는 방에 인접한 곳에 있는 특수방을 맵에 표시합니다.", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "사용 시 6.5초간 무적 상태가 되며 접촉한 적에게 초당 40의 피해를 줍니다.#{{Fear}} 적들이 캐릭터에게서 도망가며 적 2기를 죽일 때마다 {{HealingRed}}체력을 반칸 회복합니다."
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} 방 2개 클리어 시 동전을 하나 드랍합니다.", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "공격방향으로 공격력 3.5의 레이저를 발사합니다.", -- Robo-Baby
	-- Full old Desc: "공격방향으로 공격력 3.5의 레이저를 발사합니다."
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} 방 3개 클리어 시 빨간하트 반칸을 드랍합니다.", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} 공격방향으로 공격력 3.5의 둔화 눈물을 발사합니다.", -- Little Gish
	-- Full old Desc: "{{Slow}} 공격방향으로 공격력 3.5의 둔화 눈물을 발사합니다."
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "공격방향으로 공격력 3.5의 유도 눈물을 발사합니다.", -- Little Steven
	-- Full old Desc: "공격방향으로 공격력 3.5의 유도 눈물을 발사합니다."
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "눈물이 무언가에 부딪힐 때마다 양옆으로 끝없이 갈라집니다.#갈라진 눈물의 공격력은 갈라지기 이전의 절반입니다.#!!! 공격력이 1 이하인 경우 눈물이 갈라지지 않음", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "사용 시 그 방의 아이템을 다른 아이템으로 바꿉니다.", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} 비행 능력을 얻으며 몸이 분리됩니다.#{{ArrowGrayRight}} 분리된 몸은 적을 따라다니며 접촉한 적에게 초당 82.5의 피해를 줍니다."
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "캐릭터가 받는 피해를 절반으로 줄여줍니다. (최소 반칸)#!!! 일부 피해는 해당 효과를 무시합니다.", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "동전 1개당 {{DamageSmall}}공격력 +0.04#{{Blank}} (최대 +3.96)", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} 사용 시 캐릭터 주변의 적을 중독시키는 독방귀를 뀝니다.", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "접촉한 적에게 초당 105의 피해를 줍니다.", -- Guardian Angel
	-- Full old Desc: "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#접촉한 적에게 초당 105의 피해를 줍니다.#캐릭터 주변을 도는 패밀리어들의 속도가 2배로 증가합니다."
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "적이 있는 방향으로 공격력 3의 빠른 눈물을 자동으로 발사합니다.", -- Demon Baby
	-- Full old Desc: "적이 있는 방향으로 공격력 3의 빠른 눈물을 자동으로 발사합니다."
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "{{Chargeable}} 공격이 발사 후 돌아오는 근접 식칼로 변경됩니다.#공격키를 누르고 있으면 충전되며 충전량에 따라 사거리가 증가합니다.#칼 공격력: 기본 x2 ~ 최대 거리일때 x6", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "{{Battery}} 획득 시 액티브 아이템 충전량을 모두 충전합니다.#{{Battery}} 액티브 아이템 사용 시 충전량을 한칸 보존합니다.", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "피격 시 적을 따라다니며 접촉한 적에게 초당 4.3의 피해를 줍니다.", -- Dead Bird
	-- Full old Desc: "피격 시 적을 따라다니며 접촉한 적에게 초당 4.3의 피해를 줍니다."
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "!!! {{HalfHeart}}빨간하트가 반칸 이하일 때:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "!!! {{HalfHeart}}빨간하트가 반칸 이하일 때:#↑ {{DamageSmall}}공격력 +1.5#↑ {{SpeedSmall}}이동속도 +0.3"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} 랜덤 패밀리어를 하나 소환합니다.", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "사용 시 랜덤 액티브 아이템의 효과를 발동합니다.", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "폭탄에 유도 효과가 생깁니다.", -- Bobby-Bomb
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄에 유도 효과가 생깁니다."
	-- English: "Homing bombs"

	[C_ID .. 126] = "사용 시 체력 한칸을 깎고 그방에서 {{DamageSmall}}공격력 +1.2#공격력 증가 효과는 중첩됩니다.#빨간하트를 우선적으로 깎습니다.", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "스테이지를 재시작합니다.#재시작한 스테이지는 구조가 바뀝니다.", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "캐릭터 주위를 돌며 접촉하는 적에게 초당 30의 피해를 줍니다.", -- Forever Alone
	-- Full old Desc: "캐릭터 주위를 돌며 접촉하는 적에게 초당 30의 피해를 줍니다."
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "소지중일 때 비행 능력을 얻습니다.#{{SpeedSmall}}이동속도가 1.5 이상으로 고정됩니다.#사용 시 바라보는 방향으로 돌진하여 접촉한 적에게 40의 피해를 줍니다.", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} 방 3개 클리어 시 폭탄을 하나 드랍합니다.", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "공격이 멀리 나갈수록 타일 1칸당 피해량이 +0.6 증가합니다.", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "{{SoulHeart}} 사용 시 최대 체력 1칸을 소울하트 3칸으로 바꿉니다.", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 방 클리어 보상이 33%의 확률로 상자 혹은 황금상자로 바뀝니다.#!!! 방 클리어 보상이 22%의 확률로 등장하지 않습니다.", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "사용 시 체력 반칸을 깎고 {{Coin}}동전을 1~2개 드랍합니다.#빨간하트를 우선적으로 깎습니다", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "사용 시 적을 유인하고 5초 뒤 공격력 110의 폭발을 일으키는 인형을 하나 설치합니다.", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "폭탄이 아이템 사용 전까지 터지지 않습니다.", -- Remote Detonator
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄이 아이템 사용 전까지 터지지 않습니다."
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "장신구를 2개 들 수 있습니다.", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Poison}} 폭탄에 독 효과가 생깁니다.", -- Bob's Curse
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#{{Poison}} 폭탄에 독 효과가 생깁니다."
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} 피격 시 전체 체력이 반칸 남았을때 방당 1회 한정으로 소울하트를 하나 획득합니다.#방 이동 시 해당 효과를 다시 발동할 수 있습니다.", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "방 안을 돌아다니며 동전을 먹으며 동전 3~4개마다 랜덤 픽업을 드랍합니다.", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "사용 시 그 방의 장애물을 부술 수 있습니다.#!!! 피격 시 해제됨", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "적 명중 시 1/6 확률로 파란 아군 파리를 소환합니다.", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "오른쪽 눈에서 공격력 20%의 지속 레이저를 발사합니다.", -- Technology 2
	-- Full old Desc: "↓ {{TearsSmall}}공격 딜레이 x2.0#↓ {{DamageSmall}}공격력 배율 x0.65#오른쪽 눈에서 공격력 20%의 지속 레이저를 발사합니다."
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "대각선으로 돌아다니며 접촉한 적에게 초당 17의 피해를 줍니다.", -- The Peeper
	-- Full old Desc: "대각선으로 돌아다니며 접촉한 적에게 초당 17의 피해를 줍니다."
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} 피격 시 액티브 아이템 충전량을 한칸 충전합니다.", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "피격 시 그 스테이지에서 일정 배율의 {{DamageSmall}}공격력이 증가합니다.#{{Blank}} (최대 6회)", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "사용 시 맵에 {{Room}}스테이지 구조와 특수방 위치를 표시하며 {{SoulHeart}}소울하트 또는 {{Card}}카드를 하나 드랍합니다.#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "사용 시 맵에 {{Room}}스테이지 구조와 특수방 위치를 표시하며 {{SoulHeart}}소울하트 또는 {{Card}}카드를 하나 드랍합니다."
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "사용 시 5개의 빛줄기를 소환하며 접촉하는 적에게 공격력 +20의 피해를 줍니다.", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "↑ 목숨 +1#{{Player4}} 사망 시 전 방에서 ??? 캐릭터로 부활합니다.", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "공격방향으로 공격력 3.5의 장애물을 관통하는 눈물을 발사합니다.", -- Ghost Baby
	-- Full old Desc: "공격방향으로 공격력 3.5의 장애물을 관통하는 눈물을 발사합니다."
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "사용 시 공격방향으로 2초동안 지속되는 공격력 최대 184의 불꽃을 날립니다.", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "사용 시 그 방의 픽업을 다른 픽업으로 바꿉니다.", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "공격방향으로 공격력 4의 양갈래 눈물을 발사합니다.", -- Harlequin Baby
	-- Full old Desc: "공격방향으로 공격력 4의 양갈래 눈물을 발사합니다."
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "공격이 조준점을 이동시킨 곳으로 발사하는 미사일 공격으로 변경됩니다.#미사일 피해량: x20", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "4초마다 다리가 적에게 떨어지며 40의 피해를 줍니다.", -- Daddy Longlegs
	-- Full old Desc: "4초마다 다리가 적에게 떨어지며 40의 피해를 줍니다."
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "{{Slow}} 사용 시 그 방의 적에게 10의 피해를 주고 4초간 둔화시킵니다.", -- Spider Butt
	-- Full old Desc: "{{Slow}} 사용 시 그 방의 적에게 10의 피해를 주고 4초간 둔화시킵니다."
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "공격방향으로 공격력 3~5의 랜덤 속성 눈물을 발사합니다.", -- Rainbow Baby
	-- Full old Desc: "공격방향으로 공격력 3~5의 랜덤 속성 눈물을 발사합니다."
	-- English: "Shoots random tears"

	[C_ID .. 175] = "사용 시 그 방의 닫혀있는 문을 모두 엽니다.", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "사용 시 동전 하나를 소모해 일정 확률로 도박기계에서 나올 수 있는 픽업을 드랍합니다.", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "피격 시 파란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 줍니다.", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "피격 시 독방귀를 뀝니다.", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "소지중일 때 비행 능력을 얻습니다.#{{SpeedSmall}}이동속도가 1.5 이상으로 고정됩니다.#사용 시 바라보는 방향으로 돌진하여 접촉한 적에게 40의 피해를 입히고 5개의 빛줄기를 소환합니다.", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "캐릭터 주위에서 움직이며 접촉한 적에게 초당 성장단계x2 +3의 피해를 줍니다.#성장단계는 적을 처치할수록 증가하며 스테이지 진입 시 일정 수치만큼 감소합니다.", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "캐릭터의 반대로 움직이며 캐릭터가 있는 방향으로 공격력 3.5의 눈물을 발사합니다.", -- Abel
	-- Full old Desc: "캐릭터의 반대로 움직이며 캐릭터가 있는 방향으로 공격력 3.5의 눈물을 발사합니다."
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "3초마다 두 종류의 랜덤 눈물 효과가 적용됩니다.", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "모든 종류의 픽업을 하나씩 드랍합니다.", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "{{Chest}} 상자를 열 때 드랍되는 픽업의 수가 증가합니다.", -- Mom's Key
	-- Full old Desc: "↑ {{Key}}열쇠 +2#{{Chest}} 상자를 열 때 드랍되는 픽업의 수가 증가합니다."
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "{{Petrify}} 적에게 접촉시 접촉한 적을 멈추게 만들며 멈춘 적 처치 시 {{Coin}}동전을 1~3개 드랍합니다.#!!! 접촉 대미지 : 소지 동전 수#캐릭터가 똥을 쌀 때 일정 확률로 황금 똥으로 나옵니다.", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "{{Heart}}빨간하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 픽업이 1+1로 나옵니다.", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "피격 시 50% 확률로 픽업을 드랍합니다.", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "액티브 아이템의 {{ColorOrange}}충전량이 없을 때{{CR}} 액티브 아이템 사용 시 체력 두 칸을 깎고 액티브의 충전량을 모두 충전합니다.", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "획득할 때마다 성장합니다.#{{ArrowGrayRight}} 1/2단계: 캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#{{ArrowGrayRight}} 2/3단계: {{Charm}}공격방향으로 공격력 3.5의 매혹 눈물을 발사합니다.#{{ArrowGrayRight}} 3/4단계: 적을 따라다니며 접촉한 적에게 초당 7/11의 피해를 줍니다.#{{ArrowGrayRight}} 4단계: 밴디지 걸이 적 처치 시 일정 확률로 {{Heart}}빨간하트를 드랍합니다.", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "!!! 일반적인 적이 챔피언으로 바뀔 확률 +5~20%p#챔피언 몬스터는 체력이 평소의 2배, 캐릭터에게 최소 체력 1칸의 피해를 주며 색상별로 특수 효과가 적용됩니다.", -- Champion Belt
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +1#!!! 일반적인 적이 챔피언으로 바뀔 확률 +5~20%p#챔피언 몬스터는 체력이 평소의 2배, 캐릭터에게 최소 체력 1칸의 피해를 주며 색상별로 특수 효과가 적용됩니다."
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} 폭탄이 터질 때 그 방의 적에게 10의 피해를 주고 4초간 혼란시킵니다.", -- Butt Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#{{Confusion}} 폭탄이 터질 때 그 방의 적에게 10의 피해를 주고 4초간 혼란시킵니다.#!!! 똥 타입 보스의 체력을 25% 회복시킵니다."
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "2초간 어떠한 키도 입력하지 않을 시 캐릭터가 무적 상태가 됩니다.", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "사망 시 50% 확률로 전 방에서 체력 반 칸으로 부활합니다.", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "공격이 적의 탄환을 막습니다.", -- Lost Contact
	-- Full old Desc: "↓ {{ShotspeedSmall}}탄속 -0.16#공격이 적의 탄환을 막습니다.#!!! 적을 관통하는 효과가 없을 경우 적의 탄환을 막은 눈물은 사라집니다."
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "피격 시 그 방에서 캐릭터가 지나간 자리에 빨간 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다.", -- Anemic
	-- Full old Desc: "↑ {{RangeSmall}}사거리 +5#피격 시 그 방에서 캐릭터가 지나간 자리에 빨간 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다."
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HealingRed}} 타이머가 1분 00초가 될 때마다 일정 확률로 체력 반칸을 회복합니다.", -- Placenta
	-- Full old Desc: "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 타이머가 1분 00초가 될 때마다 일정 확률로 체력 반칸을 회복합니다."
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "폭탄이 터질 때 폭탄 기준 10방향으로 공격력 +25의 눈물을 발사합니다.", -- Sad Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때 폭탄 기준 10방향으로 공격력 +25의 눈물을 발사합니다."
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "공격이 무언가에 부딪힐 때 반대 각도로 튕겨져 나갑니다.", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "공격키를 누르고 있을 시 눈물이 생성된 장소에서 멈추며 공격키를 떼거나 일정 시간이 지나면 발사됩니다.", -- Anti-Gravity
	-- Full old Desc: "↑ {{TearsSmall}}공격 딜레이 -2#공격키를 누르고 있을 시 눈물이 생성된 장소에서 멈추며 공격키를 떼거나 일정 시간이 지나면 발사됩니다."
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "폭발 및 지진파 공격에 피해를 입지 않으며 폭발을 맞으면 {{HealingRed}}체력을 1칸 회복합니다.", -- Pyromaniac
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭발 및 지진파 공격에 피해를 입지 않으며 폭발을 맞으면 {{HealingRed}}체력을 1칸 회복합니다."
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 225] = "{{HalfHeart}} 적 처치 시 일정 확률로 빨간하트가 반칸 드랍됩니다.#{{SoulHeart}} 피격 시 8% 확률로 소울하트 또는 블랙하트를 드랍합니다.#{{LuckSmall}} 행운 46 이상일 때 100% 확률", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "{{Coin}} 피격 시 동전을 1~2개 드랍합니다.", -- Piggy Bank
	-- Full old Desc: "↑ {{Coin}}동전 +3#{{Coin}} 피격 시 동전을 1~2개 드랍합니다."
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "15%의 확률로 적을 {{Fear}}도망가게 하는 공격이 나갑니다.", -- Mom's Perfume
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.2#15%의 확률로 적을 {{Fear}}도망가게 하는 공격이 나갑니다.#{{LuckSmall}} 행운 85 이상일 때 100% 확률"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "{{Chargeable}} 공격을 충전한 다음 여러 개의 눈물을 흩뿌리면서 발사합니다.", -- Monstro's Lung
	-- Full old Desc: "↓ {{TearsSmall}}공격 딜레이 x4.3#{{Chargeable}} 공격을 충전한 다음 여러 개의 눈물을 흩뿌리면서 발사합니다."
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "15%의 확률로 적을 {{Fear}}도망가게 하는 공격이 나갑니다.", -- Abaddon
	-- Full old Desc: "!!! 최대 체력이 모두 제거됩니다.#↑ {{BlackHeart}}블랙하트 +6#↑ {{DamageSmall}}공격력 +1.5#↑ {{SpeedSmall}}이동속도 +0.2#15%의 확률로 적을 {{Fear}}도망가게 하는 공격이 나갑니다.#{{LuckSmall}} 행운 85 이상일 때 100% 확률"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "{{LuckSmall}} 행운 18 이상일 때 100% 확률", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 캐릭터가 지나간 자리에 검은 장판이 생기며 닿은 적은 느려집니다.#{{Slow}} 10%의 확률로 적을 둔화시키는 공격이 나갑니다.#{{LuckSmall}} 행운 18 이상일 때 100% 확률"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "피격 시 혹은 {{HolyMantleSmall}}Holy Mantle의 보호막 파괴 시 그 방의 적들을 영구적으로 둔화시킵니다.", -- Stop Watch
	-- Full old Desc: "↑ {{SpeedSmall}}이동속도 +0.3#피격 시 혹은 {{HolyMantleSmall}}Holy Mantle의 보호막 파괴 시 그 방의 적들을 영구적으로 둔화시킵니다."
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "공격이 캐릭터 주위를 돌면서 발사됩니다.", -- Tiny Planet
	-- Full old Desc: "↑ 눈물 높이 +7#공격이 장애물을 관통합니다.#공격이 캐릭터 주위를 돌면서 발사됩니다."
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "적 처치 시 파란 아군 거미를 소환합니다.", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "적에게 접촉 시 접촉한 적을 똥으로 만듭니다.", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "↑ {{AngelChanceSmall}}천사방 확률 +25%", -- Key Piece 1
	-- Full old Desc: "{{MegaSatanSmall}} Key Piece 2와 조합 시 Chest/Dark Room 스테이지에서 거대한 금색 문을 열 수 있습니다.#{{EternalHeart}} 빨간하트가 드랍될 때 2.5%의 확률로 이터널하트로 대체됩니다.#↑ {{AngelChanceSmall}}천사방 확률 +25%"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "↑ {{AngelChanceSmall}}천사방 확률 +25%", -- Key Piece 2
	-- Full old Desc: "{{MegaSatanSmall}} Key Piece 1과 조합 시 Chest/Dark Room 스테이지에서 거대한 금색 문을 열 수 있습니다.#{{EternalHeart}} 빨간하트가 드랍될 때 2.5%의 확률로 이터널하트로 대체됩니다.#↑ {{AngelChanceSmall}}천사방 확률 +25%"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "방 클리어 보상이 하나 더 나옵니다.#방 클리어 보상이 33%의 확률로 등장하지 않습니다.#{{Blank}} (중첩 시 보상 개수 증가, 보상 미등장 확률 감소)", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "적 탄환에 맞았을 때 50% 확률로 피해를 무시합니다.", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "캐릭터의 공격 방향에서 오는 적의 탄환을 모두 방어합니다.", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "공격 시 캐릭터의 이마 쪽에서 보조 레이저가 발사됩니다.", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "공격이 2발로 나갑니다.", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} 맵에 비밀방, {{SuperSecretRoom}}일급비밀방의 위치가 표시됩니다.", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "패밀리어 피해량 x2", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "파란 아군 파리 및 거미의 공격력이 2배로 증가합니다.", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "{{BossRoom}} 보스방 보상 아이템이 2개가 나오며 하나를 선택하면 나머지는 사라집니다.", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} 폭탄 픽업이 1+1로 나옵니다.", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "{{Card}} 카드를 2개 들 수 있습니다.#카드는 {{ButtonRT}}버튼으로 교체할 수 있습니다.", -- Starter Deck
	-- Full old Desc: "{{Card}} 카드를 하나 드랍합니다.#{{Card}} 카드를 2개 들 수 있습니다.#카드는 {{ButtonRT}}버튼으로 교체할 수 있습니다.#!!! 모든 알약이 카드로 교체됩니다."
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "{{Pill}} 알약을 2개 들 수 있습니다.#알약은 {{ButtonRT}}버튼으로 교체할 수 있습니다.", -- Little Baggy
	-- Full old Desc: "{{Pill}} 알약을 하나 드랍합니다.#{{Pill}} 알약을 2개 들 수 있습니다.#알약은 {{ButtonRT}}버튼으로 교체할 수 있습니다.#!!! 모든 카드가 알약으로 교체됩니다."
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "폭탄이 터진 자리에 불꽃이 남으며 불꽃에 닿은 적은 초당 66의 피해를 받습니다.", -- Hot Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄이 터진 자리에 불꽃이 남으며 불꽃에 닿은 적은 초당 66의 피해를 받습니다."
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 258] = "획득 시 및 스테이지를 넘어갈 때마다 소지중인 아이템과 능력치를 모두 바꿉니다.", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "↑ {{BlackHeart}}블랙하트 +1", -- Black Candle
	-- Full old Desc: "↑ {{BlackHeart}}블랙하트 +1#↑ {{DevilChanceSmall}}악마방 확률 +15%#{{CurseCursedSmall}} 스테이지에 입장할 때 저주에 걸리지 않습니다.#{{CurseCursedSmall}} 획득 시 Labyrinth/챌린지/특수 시드를 제외한 모든 저주를 제거합니다."
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "공격이 멀리 나갈수록 공격력 배율이 최소 x1.3까지 감소합니다.", -- Proptosis
	-- Full old Desc: "↑ {{DamageSmall}}공격력 배율 x2#공격이 멀리 나갈수록 공격력 배율이 최소 x1.3까지 감소합니다."
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "피격 시 전체 체력이 1칸 이하일 때 그 방의 적에게 40의 피해를 줍니다.", -- Missing Page 2
	-- Full old Desc: "↑ {{BlackHeart}}블랙하트 +1#피격 시 전체 체력이 1칸 이하일 때 그 방의 적에게 40의 피해를 줍니다."
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "피격 시 적을 따라다니며 접촉한 적에게 초당 22.5의 피해를 줍니다.", -- Smart Fly
	-- Full old Desc: "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#피격 시 적을 따라다니며 접촉한 적에게 초당 22.5의 피해를 줍니다."
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#{{Collectible35}} 탄환을 막을 시 10% 확률로 그 방의 적에게 40의 피해를 줍니다.", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "{{Slow}} 캐릭터를 따라다니며 지나간 자리에 하얀 장판이 생깁니다.#{{Slow}} 하얀 장판에 닿은 적은 느려집니다.#방 클리어 시 파란 아군 거미를 1~2마리 소환합니다.", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "공격방향으로 움직입니다.", -- Robo-Baby 2.0
	-- Full old Desc: "공격방향으로 움직입니다.#십자 모양 안의 적이 있는 방향으로 공격력 3.5의 레이저를 자동으로 발사합니다."
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "공격할 때마다 파란 아군 파리를 최대 1마리씩 소환합니다.", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "캐릭터를 따라다니며 지나간 자리에 빨간 장판이 생깁니다.#빨간 장판에 닿은 적은 초당 6의 피해를 받습니다.", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "적을 따라다니며 접촉한 적에게 초당 3.2의 피해를 줍니다.#{{HealingRed}} 적 처치 시 체력을 반칸 회복합니다.", -- Leech
	-- Full old Desc: "적을 따라다니며 접촉한 적에게 초당 3.2의 피해를 줍니다.#{{HealingRed}} 적 처치 시 체력을 반칸 회복합니다."
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "방 5~6개 클리어 시 랜덤 픽업을 드랍합니다.", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "대각선으로 돌아다니며 적에게 접촉 시 폭발하여 60의 피해를 줍니다.", -- BBF
	-- Full old Desc: "대각선으로 돌아다니며 적에게 접촉 시 폭발하여 60의 피해를 줍니다."
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "공격방향으로 날아가며 적에게 접촉 시 폭발하여 60의 피해를 줍니다.", -- Bob's Brain
	-- Full old Desc: "공격방향으로 날아가며 적에게 접촉 시 폭발하여 60의 피해를 줍니다."
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "피격 시 캐릭터 주위를 돌며 접촉하는 적에게 초당 75의 피해를 줍니다.", -- Best Bud
	-- Full old Desc: "피격 시 캐릭터 주위를 돌며 접촉하는 적에게 초당 75의 피해를 줍니다."
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Chargeable}} 공격방향으로 최대 공격력 31.5의 혈사포를 충전하여 발사합니다.", -- Lil Brimstone
	-- Full old Desc: "{{Chargeable}} 공격방향으로 최대 공격력 31.5의 혈사포를 충전하여 발사합니다."
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "캐릭터를 따라다니며 캐릭터가 무적이 되고 심장이 피격당할 시 캐릭터가 피해를 받습니다.", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "{{Fear}} 적을 따라다니며 접촉하는 적에게 초당 4의 피해를 주고 도망가게 합니다.", -- Lil Haunt
	-- Full old Desc: "{{Fear}} 적을 따라다니며 접촉하는 적에게 초당 4의 피해를 주고 도망가게 합니다."
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "방 안을 돌아다니며 빨간하트를 먹으며 1.5개의 빨간하트를 먹으면 {{SoulHeart}}소울하트 또는 적 거미를 드랍합니다.", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "캐릭터 주위를 느리게 돌며 적의 탄환을 막아줍니다.", -- Big Fan
	-- Full old Desc: "캐릭터 주위를 느리게 돌며 적의 탄환을 막아줍니다.#접촉한 적에게 초당 30의 피해를 줍니다."
	-- English: "Large orbital"

	[C_ID .. 280] = "방 안에 적이 있을 때 랜덤하게 파란 아군 거미를 소환합니다.", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "방 안을 돌아다니며 6초 간격으로 적을 유인합니다.", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "사용 시 이동 방향으로 점프합니다.#{{Blank}} {{ColorGray}}(착지할 수 있는 위치로 자동 보정)", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "사용 시 그 방의 아이템, 픽업, 소지중인 패시브 아이템을 모두 바꿉니다.", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "사용 시 소지중인 패시브 아이템을 모두 바꿉니다.", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "사용 시 그 방의 적을 바꿉니다.", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "사용 시 가장 앞면에 소지중인 {{Card}}카드 또는 {{Rune}}룬의 효과를 발동합니다.", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "사용 시 공격방향으로 최대 공격력 125의 지속 불꽃을 날립니다.", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} 최대 체력이 가득 찬 상태에서 빨간하트 획득 시 병에 하트가 저장됩니다.#{{Heart}} 사용 시 저장된 빨간하트를 꺼내 드랍합니다.", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "사용 시 그 방의 일반 적을 똥으로 바꿉니다.#똥 타입의 적들 및 보스를 즉사시킵니다.", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "사용 시 대각선 또는 십자 방향으로 최대 446의 피해를 주는 혈사포를 발사합니다.", -- Head of Krampus
	-- Full old Desc: "사용 시 대각선 또는 십자 방향으로 최대 446의 피해를 주는 혈사포를 발사합니다."
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "사용 시 방귀를 뀌며 주변의 적을 더 강하게 밀쳐냅니다.", -- Butter Bean
	-- Full old Desc: "사용 시 방귀를 뀌며 주변의 적을 더 강하게 밀쳐냅니다.#{{Collectible484}} 다른 액티브 아이템과 교체 시 확률적으로 Wait What? 아이템으로 바뀝니다."
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "!!! 사용 시 {{Coin}}동전을 1개 소모하고;#{{ArrowGrayRight}} 그 방의 적에게 눈물 공격력 x2의 피해를 줍니다.", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} 사용 시 소울하트 2칸을 최대 체력 1칸으로 바꿉니다.", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "그 방에 적이 있는 동안 이동속도가 점점 증가합니다.#{{Collectible77}} 이동속도가 2.0이 되면 5초간 무적 상태가 됩니다.", -- Taurus
	-- Full old Desc: "↓ {{SpeedSmall}}이동속도{{ColorOrange}}(상한){{CR}} -0.3#그 방에 적이 있는 동안 이동속도가 점점 증가합니다.#{{Collectible77}} 이동속도가 2.0이 되면 5초간 무적 상태가 됩니다."
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "높은 속도로 적과 접촉시 적에게 18의 피해를 줍니다.", -- Aries
	-- Full old Desc: "↑ {{SpeedSmall}}이동속도 +0.25#높은 속도로 적과 접촉시 적에게 18의 피해를 줍니다."
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "{{Collectible108}} 피격 시 이후 그 방에서 받는 피해를 절반으로 줄여줍니다. (최소 반칸)", -- Cancer
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +3#{{Collectible108}} 피격 시 이후 그 방에서 받는 피해를 절반으로 줄여줍니다. (최소 반칸)"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 303] = "{{Pill}} 부정적인 알약 효과가 등장하지 않습니다.#{{Collectible58}} 피격 시 일정 확률로 10초간 무적 상태가 됩니다.#{{LuckSmall}} 행운 10 이상일 때 100% 확률", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "{{ArrowUpDown}} {{DamageSmall}}공격력, {{TearsSmall}}연사, {{RangeSmall}}사거리, {{SpeedSmall}}이동속도가 항상 균등하게 조정됩니다.", -- Libra
	-- Full old Desc: "{{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 +6#{{ArrowUpDown}} {{DamageSmall}}공격력, {{TearsSmall}}연사, {{RangeSmall}}사거리, {{SpeedSmall}}이동속도가 항상 균등하게 조정됩니다."
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "캐릭터가 지나간 자리에 파란 장판이 생깁니다.#파란 장판에 닿은 적은 초당 6의 피해를 받습니다.", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "공격이 적을 더 강하게 밀쳐냅니다.", -- Pisces
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.2#↑ {{TearsizeSmall}}눈물크기 x1.25#공격이 적을 더 강하게 밀쳐냅니다."
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "↑ 목숨 +1#{{Player12}} 사망 시 전 방에서 Black Judas 캐릭터#{{Blank}} (2{{BlackHeart}}/{{DamageSmall}}공격력 배율 x2/{{SpeedSmall}}이동속도 +0.1)로 부활합니다.", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 313] = "{{HolyMantleSmall}} 피격 시 방당 1회 한정으로 피해를 무시합니다.#!!! 헌혈류 피격은 막아주지 않습니다.", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "장애물을 부술 수 있습니다.", -- Thunder Thighs
	-- Full old Desc: "↑ {{Heart}}최대 체력 +1#↓ {{SpeedSmall}}이동속도 -0.4#장애물을 부술 수 있습니다."
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "적과 픽업이 공격에 끌려옵니다.", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "!!! 충전중 피격 시 그 스테이지의 랜덤 방으로 순간이동합니다.", -- Cursed Eye
	-- Full old Desc: "{{Chargeable}} 눈물을 충전한 다음 최대 4발의 눈물을 일렬로 발사합니다.#!!! 충전중 피격 시 그 스테이지의 랜덤 방으로 순간이동합니다."
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "공격이 무언가에 부딪힐 때 초록 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다.", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "캐릭터와 연결되어 이동하며 적을 따라다닙니다.", -- Gemini
	-- Full old Desc: "캐릭터와 연결되어 이동하며 적을 따라다닙니다.#접촉한 적에게 초당 6의 피해를 줍니다."
	-- English: "Close combat familiar"

	[C_ID .. 319] = "대각선으로 이동합니다.#공격방향으로 캐릭터의 공격력과 같은 눈물을 발사합니다.", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "공격방향으로 이동합니다.", -- ???'s Only Friend
	-- Full old Desc: "공격방향으로 이동합니다.#접촉하는 적에게 초당 37.5의 피해를 줍니다."
	-- English: "Controllable fly"

	[C_ID .. 321] = "캐릭터와 연결되어 이동합니다.", -- Samson's Chains
	-- Full old Desc: "캐릭터와 연결되어 이동합니다.#접촉하는 적에게 초당 10.7의 피해를 줍니다."
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "공격방향으로 소지중인 패밀리어과 같은 효과의 눈물을 발사합니다.#발사할 수 있는 패밀리어가 없는 경우 공격력 3.5의 눈물을 발사합니다.", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "사용 시 캐릭터 기준 8방향으로 눈물을 발사합니다.#눈물을 발사할 때마다 충전량이 증가합니다.", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "사용 시 {{SecretRoom}}비밀방, {{SuperSecretRoom}}일급 비밀방, {{TreasureRoom}}보물방, {{ErrorRoom}}오류방 중 하나로 순간이동합니다.#{{Blank}} {{ColorGray}}(블랙마켓의 경우 1%)", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "사용 시 머리가 분리됩니다.#{{ArrowGrayRight}} 분리된 머리는 제자리에서 공격방향으로 공격력 3.5의 눈물을 발사합니다.", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "사용 키를 누르고 있으면 충전량이 줄어들며 충전량이 모두 줄어들면 1초간 무적 상태가 됩니다.#무적 상태가 끝나도 키를 누르면 체력 반 칸의 피해를 받습니다.", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "{{Collectible58}} 피격 시 {{HalfHeart}}빨간하트가 반칸 이하일 때 5초간 무적 상태가 됩니다.#Chest 스테이지 진입에 필요한 아이템입니다.", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "{{Collectible35}} 피격 시 {{HalfHeart}}빨간하트가 반칸 이하일 때 그 방의 적에게 40의 피해를 줍니다.#Dark Room 스테이지 진입에 필요한 아이템입니다.", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "공격이 공격키로 조종 가능한 원격 눈물 공격으로 변경됩니다.", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "눈물에 후광이 생기며 후광에 닿은 적은 초당 공격력의 x4.5의 피해를 받습니다.", -- Godhead
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +0.5#↓ {{TearsSmall}}연사 -0.3#↑ {{RangeSmall}}사거리 +1.2#↑ 눈물 높이 +0.8#↓ {{ShotspeedSmall}}탄속 -0.3#공격이 적에게 유도됩니다.#눈물에 후광이 생기며 후광에 닿은 적은 초당 공격력의 x4.5의 피해를 받습니다."
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "↑ 목숨 +1#{{Player11}} 사망 시 즉시 Lazarus 캐릭터#{{Blank}} (1{{Heart}}/{{DamageSmall}}공격력 배율 x1.2/{{Collectible214}}Anemic)로 부활합니다.", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "맵에 스테이지 구조, 특수방 위치, 비밀방 위치가 표시됩니다.", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "적의 탄환이 캐릭터를 피해갑니다.", -- The Soul
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +2#적의 탄환이 캐릭터를 피해갑니다."
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "4번째 방마다 그 방의 적이 느려지거나;#!!! 느려지는 대신 13%의 확률로 그 방의 적이 빨라집니다.", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "사용 후 공격방향으로 부메랑을 던집니다.#{{Petrify}} 부메랑에 맞은 적에게 공격력 x2의 피해를 주며 2초간 멈추게 만듭니다.", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "사용 시 장신구를 제외한 그 방의 아이템과 픽업을 2배로 복사합니다.", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} 사용 시 가장 앞면에 소지중인 알약의 효과를 발동합니다.", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} 방 입장 시 그 방의 적에게 공격력 x2의 피해를 줍니다.#적 처치 시 초록 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다.", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "{{Petrify}} 사용 시 그 방의 적을 2초간 석화시키며 바라보는 방향으로 충격파를 발사합니다.", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "사용 시 전체 체력이 반칸이 되며 장애물을 관통하는 (공격력 +1) x10의 눈물을 발사합니다.", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "폭탄의 범위가 십자방향으로 두칸 증가합니다.", -- Bomber Boy
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄의 범위가 십자방향으로 두칸 증가합니다."
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "액티브 아이템 사용 시 효과가 두번 발동됩니다.", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} 소지중인 패밀리어를 복사합니다.#{{ArrowGrayRight}} {{Collectible113}}복사할 수 있는 패밀리어가 없다면 그 방에서 Demon Baby 패밀리어를 소환합니다.", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "공격이 장애물을 관통합니다.", -- The Wiz
	-- Full old Desc: "공격이 2발로 나가며 각각 대각선으로 나갑니다.#공격이 장애물을 관통합니다."
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "공격이 적을 더 강하게 밀쳐냅니다.", -- 8 Inch Nails
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +1.5#공격이 적을 더 강하게 밀쳐냅니다."
	-- English: "Increases knockback"

	[C_ID .. 360] = "공격방향으로 캐릭터의 공격과 같은 공격을 발사합니다.", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "공격방향으로 캐릭터의 눈물과 같은 눈물을 발사합니다.", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "방 클리어 시 35% 확률로 픽업 또는 10% 확률로 장신구를 드랍합니다.", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "{{EternalHeart}} 그 방에서 탄환 10회 방어시 이터널하트를 하나 드랍합니다.", -- Sworn Protector
	-- Full old Desc: "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#접촉한 적에게 초당 105의 피해를 줍니다.#{{EternalHeart}} 그 방에서 탄환 10회 방어시 이터널하트를 하나 드랍합니다."
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "캐릭터 주변을 돌며 접촉하는 적에게 초당 45의 피해를 줍니다.", -- Friend Zone
	-- Full old Desc: "캐릭터 주변을 돌며 접촉하는 적에게 초당 45의 피해를 줍니다."
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "벽과 장애물 둘레를 돌며 접촉하는 적에게 초당 105의 피해를 줍니다.", -- Lost Fly
	-- Full old Desc: "벽과 장애물 둘레를 돌며 접촉하는 적에게 초당 105의 피해를 줍니다."
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "폭탄이 적에게 접촉 시 달라붙으며 해당 폭탄으로 달라붙은 적을 처치 시 파란 아군 거미 2~5마리를 소환합니다.", -- Sticky Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄이 적에게 접촉 시 달라붙으며 해당 폭탄으로 달라붙은 적을 처치 시 파란 아군 거미 2~5마리를 소환합니다."
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "눈물을 한 방향으로만 발사 시 {{TearsSmall}}연사가 지속적으로 증가합니다.", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "공격이 벽 바깥으로 나갈시 반대편 벽으로 이어서 발사됩니다.", -- Continuum
	-- Full old Desc: "↑ {{RangeSmall}}사거리 +2.25#↑ 눈물 높이 +1.5#공격이 장애물을 관통합니다.#공격이 벽 바깥으로 나갈시 반대편 벽으로 이어서 발사됩니다."
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "피격 시 방 안에 트롤폭탄 6개를 생성합니다.#트롤폭탄은 캐릭터의 폭탄 아이템의 영향을 받습니다.", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "방안에 적이 있을 때 30초마다 랜덤으로:#{{ArrowGrayRight}} 배터리 픽업을 드랍하거나(최대 2회);#{{ArrowGrayRight}} 액티브 아이템의 충전량을 한칸 채워주거나(최대 2회);#{{ArrowGrayRight}} {{Petrify}} 그 방의 적을 2초간 석화 상태로 만듭니다.", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "눈물이 적에게 명중할 때마다 {{DamageSmall}}공격력이 +25%씩 최대 2배까지 증가합니다.#눈물이 빗나갈 시 일정 확률로 공격력 증가치가 초기화 됩니다.", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 375] = "폭발 공격에 피해를 입지 않습니다.#적 탄환에 맞았을 때 25% 확률로 피해를 무시하며 캐릭터의 눈물과 같은 눈물을 3발 발사합니다.", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "{{Shop}}상점에서 물건 구매 시 같은 종류의 아이템이 재입고됩니다.", -- Restock
	-- Full old Desc: "랜덤 픽업을 3개 드랍합니다.#{{Shop}}상점에서 물건 구매 시 같은 종류의 아이템이 재입고됩니다."
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "거미류 적들이 공격하지 않거나 약해집니다.", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "공격키를 3초간 누르고 있을시 캐릭터의 자리에 똥폭탄이 생성됩니다.", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "열쇠를 소모하는 문을 열때 동전을 대신 소모합니다.", -- Pay To Play
	-- Full old Desc: "↑ {{Coin}}동전 +5#열쇠를 소모하는 문을 열때 동전을 대신 소모합니다."
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "다음 게임에서 랜덤 아이템을 하나 들고 시작합니다.", -- Eden's Blessing
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.7#다음 게임에서 랜덤 아이템을 하나 들고 시작합니다.#{{Blank}} {{ColorGray}}(최대 10개)"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "사용 시 공격방향으로 몬스터볼을 던집니다.#{{Friendly}} 몬스터볼에 맞은 적은 포획되며 다음 사용 시 아군 상태로 소환됩니다.", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "사용 시 그 방의 눈물이 6갈래로 분열합니다.", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} 공격키를 누르고 있는 동안 충전되며 공격키를 떼면 공격했던 방향으로 돌진해 벽에 튕겨다니며 적을 공격하며 이동 속도에 따라 5~90의 피해를 줍니다.", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "방 안을 돌아다니며 동전을 먹으며 일정 개수 이상 먹으면 성장합니다.#{{ArrowGrayRight}} 1단계({{Coin}}~5): X#{{ArrowGrayRight}} 2단계({{Coin}}6~11): 방 클리어 시 때때로 픽업을 드랍합니다.#{{ArrowGrayRight}} 3단계({{Coin}}12~23): 적에게 공격력 3.5의 일정 확률로 맞추면 동전을 드랍하는 눈물을 발사합니다.#{{ArrowGrayRight}} 4단계({{Coin}}24~): 적을 따라다녀 접촉한 적에게 초당 37.5의 피해를 주며 {{ColorOrange}}때때로 {{Bomb}}폭탄을 설치합니다.{{CR}}", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "사용 시 그 방의 장애물을 바꿉니다.", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "오라를 가지고 캐릭터를 따라다닙니다.#{{Slow}} 오라 안에 들어온 적과 탄환을 느려지게 합니다.", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "방 안을 돌아다니며 열쇠를 먹습니다.#{{Chest}} 일정 개수 이상 먹으면 랜덤 상자를 드랍합니다.", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} 방 5~6개 클리어 시 룬을 하나 드랍합니다.", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "공격방향으로 공격력 10의 유도 눈물을 발사합니다.", -- Seraphim
	-- Full old Desc: "공격방향으로 공격력 10의 유도 눈물을 발사합니다."
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} 피격 시 그 방의 적을 5초간 매혹시킵니다.", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "스테이지마다 랜덤 별자리 아이템의 효과를 가집니다.", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15%의 확률로 적을 중독시키는 공격이 나갑니다.#{{BlackHeart}} 중독된 적이 죽을때 20% 확률로 블랙하트가 드랍됩니다.", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "조준점을 조종할 수 있으며 자동으로 조준점이 있는 방향을 향해 눈물을 발사합니다.", -- Marked
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.7#↑ {{RangeSmall}}사거리 +3.15#↑ 눈물 높이 +0.3#조준점을 조종할 수 있으며 자동으로 조준점이 있는 방향을 향해 눈물을 발사합니다."
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} 공격이 충전형 레이저 고리 공격으로 변경됩니다.#레이저는 사거리 제한이 없으며 적과 장애물을 관통합니다.", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "사용 시 파란 포탈과 주황 포탈을 번갈아 생성합니다.#각 포탈로 입장하면 다른쪽 포탈로 나올 수 있습니다.", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 398] = "{{Shrink}} 10%의 확률로 적을 작아지게 만드는 공격이 나갑니다.#작아진 적은 밟아 죽일 수 있습니다.", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "캐릭터의 정면에 창이 생깁니다.#{{Fear}} 창은 적에게 공격력 x2의 피해를 주며 캐릭터에게서 도망가게 합니다.", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25%의 확률로 접착 눈물이 나갑니다.#접착 눈물이 적에게 붙을 시 몇초 후 폭발하여 60의 피해를 줍니다.", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "픽업을 1~6개 드랍합니다.", -- Chaos
	-- Full old Desc: "픽업을 1~6개 드랍합니다.#등장 아이템의 방 배열 구분이 사라집니다."
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "방 안을 돌아다니며 접촉한 적에게 랜덤 상태이상을 부여합니다.#적의 체력과 적에게 주는 피해량이 수치로 표시됩니다.#방 클리어 시 일정 확률로 배터리 픽업이나 자폭 거미를 드랍합니다.", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "탄환을 막을 시 10% 확률로 랜덤 효과의 방귀를 뀝니다.", -- Farting Baby
	-- Full old Desc: "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#탄환을 막을 시 10% 확률로 랜덤 효과의 방귀를 뀝니다."
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "대각선으로 돌아다니며 접촉한 적에게 초당 120의 피해를 주며 랜덤 상태이상을 부여합니다.", -- GB Bug
	-- Full old Desc: "대각선으로 돌아다니며 접촉한 적에게 초당 120의 피해를 주며 랜덤 상태이상을 부여합니다."
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "{{ArrowUpDown}} 사용 시 {{DamageSmall}}공격력, {{TearsSmall}}연사, {{RangeSmall}}사거리, {{SpeedSmall}}이동속도 배율을 랜덤으로 바꿉니다.#!!! 바뀐 배율의 총합은 항상 동일합니다.", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "캐릭터 머리에 오라가 생기며 오라 색에 따라 특정 능력치가 증가합니다.#피격시 비활성화되며 방 이동시 다른 색으로 변합니다.#{{ArrowGrayRight}} {{ColorRed}}빨강:{{CR}} {{DamageSmall}}공격력 +4.0#{{Blank}} {{ColorCyan}}파랑:{{CR}} {{TearsSmall}}눈물 딜레이 -4#{{Blank}} {{ColorOrange}}주황:{{CR}} {{RangeSmall}}사거리 +7.5, 눈물 높이 +1#{{Blank}} {{ColorYellow}}노랑:{{CR}} {{SpeedSmall}}이동속도 +0.5", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "피격 시 캐릭터 주위에 검은 고리가 둘러져 접촉한 적에게 최대 공격력 x30의 피해를 줍니다.#고리로 적 처치 시 15% 확률로 {{BlackHeart}}블랙하트를 드랍합니다.", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{EmptyHeart}}빨간하트가 없을 때 비행 능력을 얻으며 40초마다 10초간 무적 상태가 됩니다.", -- Empty Vessel
	-- Full old Desc: "↑ {{BlackHeart}}블랙하트 +2#{{EmptyHeart}}빨간하트가 없을 때 비행 능력을 얻으며 40초마다 10초간 무적 상태가 됩니다."
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 410] = "{{LuckSmall}} 행운 20 이상일 때 10% 확률", -- Evil Eye
	-- Full old Desc: "공격 시 3.33%의 확률로 매우 느린 푸른 눈을 발사합니다.#{{ArrowGrayRight}} 눈은 날아가면서 캐릭터의 공격방향으로 캐릭터의 눈물 효과와 같은 눈물을 발사합니다.#{{LuckSmall}} 행운 20 이상일 때 10% 확률"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot an eye#The eye moves in a straight line and shoots tears in the same direction as Isaac"

	[C_ID .. 411] = "적 처치 시 그 방에서;#{{ArrowGrayRight}} {{DamageSmall}}공격력 +0.5(최대 +5)", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "15/30/60/90회 피격 시:#{{ArrowGrayRight}} {{NoLB}}악마류 패밀리어를 영구적으로 소환합니다. (최대 4마리)", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "{{Heart}} 하트류 픽업 15회 획득 시마다:#{{ArrowGrayRight}} {{NoLB}}천사류 패밀리어를 영구적으로 소환합니다.(최대 5)#{{ArrowGrayRight}} {{SoulHeart}}소울하트를 하나 드랍합니다.", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} 보물방 아이템이 2개가 나오며 하나를 선택하면 나머지는 사라집니다.", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "최대 체력이 모두 차있거나 빨간하트가 없을 때:#{VAR:EFFECTLIST}#피격 시 그 방에서 비활성화됩니다.", -- Crown Of Light
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +2#최대 체력이 모두 차있거나 빨간하트가 없을 때:#↑ {{DamageSmall}}공격력 배율 x2#↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5#↓ {{ShotspeedSmall}}탄속 -0.3#피격 시 그 방에서 비활성화됩니다."
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "카드 또는 알약을 2개 들 수 있습니다.#카드/알약은 {{ButtonRT}}버튼으로 교체할 수 있습니다.", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "오라를 가지고 대각선으로 이동하며 오라 안에 들어온 적에게 초당 공격력의 129%의 피해를 입히고, 캐릭터가 들어오면 {{DamageSmall}}공격력을 x1.5 증가시켜줍니다.", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "눈물을 발사할 때마다 눈물의 효과가 바뀝니다.", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "사용 시 가보지 않은 방들 중 하나로 정해진 우선순위에 따라서 순간이동합니다.", -- Teleport 2.0
	-- Full old Desc: "사용 시 가보지 않은 방들 중 하나로 정해진 우선순위에 따라서 순간이동합니다.#!!! 순서: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}> {{ErrorRoom}}오류방"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "캐릭터가 지나간 곳에 검은 가루가 남으며;#{{ArrowGrayRight}} 가루로 원을 그리면 마법진이 생성됩니다.#마법진 위의 적에게 틱당 10의 피해를 줍니다.", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} 사용 시 매혹 방귀를 뀌며 주변의 적에게 5의 피해를 줍니다.", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "사용 시 모든 상태를 이전 방의 시점으로 시간을 되돌립니다.", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "캐릭터 주위에 하얀 고리가 둘러집니다.#고리에 접촉하는 적에게 초당 캐릭터의 공격력 x1.0만큼의 피해를 줍니다.#탄환이 고리에 접촉할 시 확률적으로 유도 반사탄을 발사합니다.", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "{{GrabBag}} 자루를 하나 드랍합니다.#{{GrabBag}} 특정 픽업을 일정 확률로 픽업 자루로 바꿉니다.#!!! {{NoLB}}픽업 대체 확률({{ColorRed}}고정 드랍 포함{{CR}}):#{{Coin}} {{NoLB}}동전: 10%#{{Key}} {{NoLB}}열쇠: 20%#{{Bomb}} {{NoLB}}폭탄: 20%(방 클리어 트롤 폭탄 포함)#{{Card}} {{NoLB}}카드/룬: 20%#{{Battery}} {{NoLB}}배터리: 20%", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "캐릭터의 몸통이 바라보는 방향으로 손전등을 비춥니다.#{{Slow}} 빛 안에 들어온 적이나 탄환을 둔화시킵니다.", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "사용 시 이동식 TNT를 생성합니다.", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} 공격 명중 시 5% 확률로 동전을 드랍합니다.", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "근처의 적에게 캐릭터의 공격력과 같은 눈물을 발사합니다.", -- Papa Fly
	-- Full old Desc: "캐릭터가 지나간 길을 1초 후 따라갑니다.#근처의 적에게 캐릭터의 공격력과 같은 눈물을 발사합니다."
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "눈물이 통과하면 2개로 복제되어 나갑니다.", -- Multidimensional Baby
	-- Full old Desc: "캐릭터가 지나간 길을 2초 후 따라갑니다.#눈물이 통과하면 2개로 복제되어 나갑니다."
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "폭탄이 터질 때 25%의 확률로 랜덤 픽업 또는 장신구가 드랍되거나 15%의 확률로 랜덤 적을 {{Charm}}매혹시킵니다.", -- Glitter Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때 25%의 확률로 랜덤 픽업 또는 장신구가 드랍되거나 15%의 확률로 랜덤 적을 {{Charm}}매혹시킵니다."
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "피격 시 그 방의 적을 {{Fear}}도망가게 하며 초당 5의 피해를 주는 검은색 아군 애벌레를 소환합니다.", -- My Shadow
	-- Full old Desc: "피격 시 그 방의 적을 {{Fear}}도망가게 하며 초당 5의 피해를 주는 검은색 아군 애벌레를 소환합니다."
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "적 처치 시 병에 파리가 저장됩니다. (최대 20)#사용 시 저장된 파리 수 만큼 파란 아군 파리를 소환합니다.", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "공격력 3.5의 눈물을 4갈래로 발사합니다.", -- Lil Loki
	-- Full old Desc: "공격력 3.5의 눈물을 4갈래로 발사합니다."
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "피격 시 그 방에서 {{TearsSmall}}연사 +0.3", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "사용 시 그 방을 다시 시작하며, 방 클리어 시 이전과 다른 보상이 드랍됩니다.", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 441] = "사용 시 15초 동안 공격력 x5의 대형 혈사포를 발사합니다.", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "{{Heart}}빨간하트가 1칸일 때 {{TearsSmall}}연사 +0.7, {{RangeSmall}}사거리 +1.5, 눈물 높이 +1, {{ShotspeedSmall}}탄속 +0.2#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "{{Heart}}빨간하트가 1칸일 때 {{TearsSmall}}연사 +0.7, {{RangeSmall}}사거리 +1.5, 눈물 높이 +1, {{ShotspeedSmall}}탄속 +0.2"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "눈물을 15번 발사할 때마다 공격력 x2의 눈물 다발이 나갑니다.", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 446] = "{{Poison}} 공격 시 캐릭터 주위에 적을 중독시키는 독가스가 나옵니다.", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "7.5초동안 공격을 멈추지 않고 공격을 유지할 시 그 방에서 15초동안 유지되는 갈색 구름이 생성되며;#구름에 닿은 적은 캐릭터의 공격력 x5의 피해를 줍니다.", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "피격 시 25% 확률로 {{Heart}}빨간하트가 드랍되며;#10%의 확률로 그 방에서 캐릭터가 지나간 자리에 빨간 장판이 생깁니다.#장판은 지상의 적에게 초당 6의 피해를 줍니다.", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "적 탄환에 맞았을 때 25%의 확률로 유도 반사탄을 발사합니다.", -- Metal Plate
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +1#적 탄환에 맞았을 때 25%의 확률로 유도 반사탄을 발사합니다."
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "{{Petrify}} 눈물을 20번 발사할 때마다 {{ColorYellow}}동전을 1개 소모하고{{CR}} 캐릭터의 공격력 x2의 피해를 주며 적을 멈추게 만드는 눈물을 발사합니다.#멈춘 적 처치 시 {{Coin}}동전을 1~4개 드랍합니다.", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "카드 또는 룬 사용 시 효과가 두번 발동합니다.", -- Tarot Cloth
	-- Full old Desc: "{{Card}}카드 또는 {{Rune}}룬을 하나 드랍합니다.#카드 또는 룬 사용 시 효과가 두번 발동합니다."
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "피격 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사합니다.", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "눈물이 무언가에 부딪힐 때 1~3갈래로 갈라집니다.", -- Compound Fracture
	-- Full old Desc: "↑ {{RangeSmall}}사거리 +1.5#↑ 눈물 높이 +1#눈물이 무언가에 부딪힐 때 1~3갈래로 갈라집니다."
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "{{Card}}카드 또는 {{Pill}}알약을 하나 드랍합니다.#카드 또는 알약을 2개 들 수 있습니다.#카드/알약은 {{ButtonRT}}버튼으로 교체할 수 있습니다.", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "{{Coin}} 행운 동전을 하나 드랍합니다.", -- Dad's Lost Coin
	-- Full old Desc: "↑ {{RangeSmall}}사거리 +1.5#↑ 눈물 높이 +1#{{Coin}} 행운 동전을 하나 드랍합니다."
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "피격 시 20% 확률로 피해를 무시합니다.", -- Cone Head
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +1#피격 시 20% 확률로 피해를 무시합니다."
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "장신구를 하나 드랍합니다.", -- Belly Button
	-- Full old Desc: "장신구를 하나 드랍합니다.#장신구를 두개 들 수 있습니다."
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20%의 확률로 접착 눈물이 나가며 접착 눈물이 적에게 붙을 시 60초동안 지속 피해를 줍니다.", -- Sinus Infection
	-- Full old Desc: "20%의 확률로 접착 눈물이 나가며 접착 눈물이 적에게 붙을 시 60초동안 지속 피해를 줍니다."
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5%의 확률로 적을 혼란하게 하는 공격이 나갑니다.#해당 혼란은 풀리지 않으며 보스의 경우 일반적인 혼란보다 더 깁니다.#화면이 조금 어두워집니다.", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "{{LuckSmall}} 행운 5 이상일 때 50% 확률", -- Parasitoid
	-- Full old Desc: "15%의 확률로 알주머니 눈물이 나갑니다.#알주머니 명중 시 파란 아군 거미 또는 파리를 소환합니다.#{{LuckSmall}} 행운 5 이상일 때 50% 확률"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 463] = "25%의 확률로 오브젝트를 부수는 눈물이 나갑니다.", -- Sulfuric Acid
	-- Full old Desc: "↑ {{DamageSmall}}공격력 +0.3#25%의 확률로 오브젝트를 부수는 눈물이 나갑니다."
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "소지중인 픽업의 개수에 따라 챔피언 적이 드랍하는 보상이 달라집니다.", -- Glyph of Balance
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +2#소지중인 픽업의 개수에 따라 챔피언 적이 드랍하는 보상이 달라집니다."
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "공격을 360도로 발사할 수 있습니다.", -- Analog Stick
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.3#공격을 360도로 발사할 수 있습니다.#{{Blank}} (키보드: 8방향으로 발사 가능)"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} 방에서 처음 죽은 적은 독가스를 뀌며 독가스에 맞은 적은 감염됩니다.#감염된 적은 죽을 때 다시 독가스를 뀝니다.", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "캐릭터의 전방을 가리킵니다.#가리킨 방향에 있는 적에게 공격력의 10%의 지속 피해를 줍니다.", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "캐릭터를 따라다니며 지나간 자리에 파란 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다.#적이 구름에 닿으면 확률적으로 빛줄기가 나와 적에게 공격력 +20의 피해를 줍니다.", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "대각선으로 이동하며 접촉하는 적에게 초당 30의 피해를 줍니다.", -- Hushy
	-- Full old Desc: "대각선으로 이동하며 접촉하는 적에게 초당 30의 피해를 줍니다.#공격키를 누르고 있으면 움직이지 않습니다."
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 472] = "캐릭터를 따라다니며 공격키를 누르고 있으면 움직이지 않습니다.#다른 패밀리어들이 이 패밀리어를 기준으로 이동합니다.", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "공격방향으로 느리게 돌진합니다.", -- Big Chubby
	-- Full old Desc: "공격방향으로 느리게 돌진합니다.#접촉하는 적에게 초당 40.5의 피해를 줍니다."
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "사용 시 그 방의 픽업 중 하나를 복사합니다.", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "사용 시 그 방의 아이템을 흡수합니다.#액티브 흡수와 동시에, 그리고 아이템을 사용할 때마다 흡수한 액티브의 효과가 발동됩니다.#패시브 흡수 시 랜덤 능력치가 2개 증가합니다.", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "사용 시 그 방의 적의 움직임이 30초간 멈춥니다.#공격키를 누르면 효과가 풀립니다.", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "사용 시 소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다.#소지 시 방 클리어 보상이 2%의 확률로 장신구로 바뀝니다.", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "사용 시 그 방의 픽업을 흡수 + 흡수량만큼 파란 아군 파리 및 거미를 소환하며;#{{ArrowGrayRight}} 소지 중인 파란 아군 파리 및 거미를 2배로 늘립니다.#파란 아군 파리 및 거미가 하나도 없을 경우 둘 중 한마리를 소환합니다.", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "사용 시 가장 최근에 획득한 패시브 아이템을 제거하고;#{{ArrowGrayRight}} 캐릭터를 다른 랜덤 캐릭터로 바꿉니다.", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "사용 시 그 스테이지에서 방 최초 입장마다 그 방의 적에게 200의 폭발 피해를 줍니다.#사용한 스테이지에서 {{BossRoom}}보스방 {{ColorOrange}}최초 입장 시{{CR}} 보스러시/Blue Womb으로 향하는 문이 열립니다.#{VAR:EFFECTLIST}", -- Mama Mega!
	-- Full old Desc: "사용 시 그 스테이지에서 방 최초 입장마다 그 방의 적에게 200의 폭발 피해를 줍니다.#사용한 스테이지에서 {{BossRoom}}보스방 {{ColorOrange}}최초 입장 시{{CR}} 보스러시/Blue Womb으로 향하는 문이 열립니다."
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "사용 시 방귀를 뀌며 주변의 적을 더 강하게 밀쳐내고;#{{ArrowGrayRight}} 캐릭터 주위에 충격파를 일으킵니다.", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "!!! 사용 시 50% 확률로:#{{ArrowGrayRight}} 그 방의 아이템, 픽업을 2배로 복사하거나;#{{ArrowGrayRight}} 아이템, 픽업을 모두 없애고 동전을 1개 드랍합니다.", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "사용 시 피해를 입지 않고 피격 시 발동 효과를 발동합니다.", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 487] = "{{ArrowGrayRight}} 캐릭터가 지나간 자리에 빨간 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다.", -- Potato Peeler
	-- Full old Desc: "!!! {{NoLB}}사용 시 {{EmptyHeart}} 최대 체력 1칸을 깎으며 이하의 피격 효과 발동:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +0.2#{{ArrowGrayRight}} {{Collectible73}}Cube of Meat +1#{{Timer}} 그 방에서:#{{ArrowGrayRight}} {{RangeSmall}}사거리 +5#{{ArrowGrayRight}} 캐릭터가 지나간 자리에 빨간 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다."
	-- English: "{{EmptyHeart}} Removes 1 heart container for:#{VAR:EFFECTLIST}#{{IND}}{{NameC73}}#{VAR:ROOMEFFECT}#{{IND}}{{Collectible214}} Leave a trail of blood creep"

	[C_ID .. 488] = "{{Timer}} 사용 시 그 방에서:#랜덤 아이템 효과를 발동합니다.", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "사용 할 때마다 랜덤 종류의 주사위로 바뀝니다.", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "사용 시 그 방의 아이템을 2개 생성합니다.", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} 알약 사용 시 그 방의 적을 1초간 중독시킵니다.", -- Acid Baby
	-- Full old Desc: "{{Pill}} 방 3개 클리어 시 알약을 하나 드랍합니다.#{{Poison}} 알약 사용 시 그 방의 적을 1초간 중독시킵니다."
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "방 안에 {{SecretRoom}}{{SuperSecretRoom}}비밀방, 색돌, {{LadderRoom}}사다리방이 있는 위치로 날아갑니다.", -- YO LISTEN!
	-- Full old Desc: "↑ {{LuckSmall}}행운 +1#방 안에 {{SecretRoom}}{{SuperSecretRoom}}비밀방, 색돌, {{LadderRoom}}사다리방이 있는 위치로 날아갑니다."
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "{{EmptyHeart}}빈 최대 체력 한칸 당 {{DamageSmall}}공격력 +0.2#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "{{EmptyHeart}}빈 최대 체력 한칸 당 {{DamageSmall}}공격력 +0.2"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "눈물이 무언가에 부딪힐 때마다 1~2개의 유도 레이저가 발사됩니다.", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "공격 시 확률적으로 최대 공격력 125의 지속 불꽃을 날립니다.", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 497] = "방 입장 시 그 방의 적들이 혼란에 걸립니다.#공격키를 누르면 효과가 풀립니다.", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChanceSmall}} 악마방 등장 시 천사방이 함께 등장하며 두 방 중 한곳을 선택할 수 있습니다.", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "동전 25개 당 {{EmptyHeart}}빈 최대 체력 +1#동전으로 늘어난 체력은 동전 소비 시 사라집니다.", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "확률적으로 적을 {{Slow}}둔화시키는 공격력 x2의 눈물이 나갑니다.", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "사용 시 그 자리에서 주위의 적을 공격하는 파란 아군 파리를 소환합니다.", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "{{Friendly}} 방 입장 시 20%의 확률로 아래 중 하나의 아군 적을 소환합니다:#{{ArrowGrayRight}} Attack Fly#{{Blank}} Pooter#{{Blank}} One Tooth#{{Blank}} Fat Bat#{{Blank}} Frowning Gaper#{{Blank}} Vis", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "적을 뒤에서 공격할 시 2배의 피해를 입히고 {{BleedingOut}}출혈 상태로 만듭니다.", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "사용 시 그 방의 적에게 눈물 공격력 + 적 체력의 10%의 피해를 줍니다.", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "{{BleedingOut}} 캐릭터 주위를 돌며 접촉하는 적에게 초당 캐릭터의 공격력 x3의 피해를 출혈 피해를 줍니다.", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "캐릭터 주위를 돌며 자신이 바라보는 방향으로 공격력 3.5의 눈물을 발사합니다.", -- Bloodshot Eye
	-- Full old Desc: "캐릭터 주위를 돌며 자신이 바라보는 방향으로 공격력 3.5의 눈물을 발사합니다.#접촉하는 적에게 초당 30의 피해를 줍니다."
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "{{Timer}} 사용 시 그 방에서:#{{Friendly}} {{DeliriumSmall}} Delirium 버전의 아군 보스를 소환합니다.", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "적의 주위를 돌면서 접촉하는 적에게 초당 30의 피해를 줍니다.", -- Angry Fly
	-- Full old Desc: "적의 주위를 돌면서 접촉하는 적에게 초당 30의 피해를 줍니다."
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "사용 시 공격방향으로 적들을 모두 빨아들여 붙잡아놓는 블랙홀을 소환합니다.#블랙홀은 6초동안 지속되며 주변 장애물들을 모두 파괴합니다.", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "일정 확률로 적 하나를 {{Charm}}매혹시키거나 {{Fear}}캐릭터에게서 멀어지게 합니다.#피격 시 확률적으로 무지개똥을 쌉니다.", -- Bozo
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +1#↑ {{DamageSmall}}공격력 +0.1#일정 확률로 적 하나를 {{Charm}}매혹시키거나 {{Fear}}캐릭터에게서 멀어지게 합니다.#피격 시 확률적으로 무지개똥을 쌉니다."
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "적과 적의 탄환이 때때로 1초간 멈춥니다.#방 클리어 보상이 25% 확률로 두배로 나옵니다.", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "사용 시 아래 중 하나를 소환합니다:#{{ArrowGrayRight}} 그 방의 아이템#{{ArrowGrayRight}} {{Collectible132}}A Lump of Coal#{{ArrowGrayRight}} {{Collectible36}}The Poop#{{LuckSmall}} 아이템 소환 확률은 행운 수치에 비례합니다.", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "사용 시 그 방에 스프링클러를 설치합니다.#스프링클러는 시계방향으로 회전하면서 캐릭터의 공격과 같은 공격을 발사합니다.", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "폭탄을 설치할 때 지연 없이 빠르게 설치할 수 있습니다.", -- Fast Bombs
	-- Full old Desc: "↑ {{Bomb}}폭탄 +7#폭탄을 설치할 때 지연 없이 빠르게 설치할 수 있습니다."
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "공격방향으로 특수 효과 눈물을 발사합니다.#효과는 스테이지마다 바뀝니다.", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "10초마다 랜덤 패밀리어로 바뀝니다.", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "적 15기 처치 시 액티브 아이템 충전량을 한칸 충전합니다.", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "{{Shop}}상점이나 {{DevilRoom}}악마방에서 사용 시 랜덤 상품 하나를 거래없이 얻을 수 있습니다.", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "사용 시 3초동안 캐릭터에게 날아오는 적의 탄환을 붙잡습니다.#{{ArrowGrayRight}} 3초가 끝나면 붙잠은 탄환을 다시 되돌려 발사합니다.", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "사용 시 그 방의 아이템과 픽업을 상자에 저장합니다.#다음 사용 시 저장했던 아이템들을 드랍합니다.", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "눈물마다 레이저가 연결되며 나갑니다.", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "피격 시 캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#접촉한 적에게 초당 35의 피해를 줍니다.#탄환을 일정 개수 이상 막을 시 사라집니다.", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "방을 돌아다니며 접촉한 적에게 피해를 입히고 아군 파리를 소환합니다.#10초마다 모습이 바뀌며 적에게 주는 피해와 소환하는 아군 파리의 종류가 달라집니다.", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "사용 시 조준점으로 목표를 설정합니다.#{{ArrowGrayRight}} 일정 시간 후 유령이 나타나 목표하는 대상에 상호작용합니다.", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "캐릭터 주위를 돌며 공격이 통과하면 4갈래로 갈라져 나갑니다.", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "눈물이 체공하며 다른 눈물과 부딪힐 시 서로 튕겨나가며 움직입니다.", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "{{DeathMark}} 해골마크가 뜬 적을 순차적으로 처치 시 픽업이 드랍되거나 랜덤 능력치가 하나 증가합니다.", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 532] = "눈물이 체공하며 눈물에 눈물이 흡수됩니다.#최대 5번 흡수 시 파열되어 8방향으로 작은 눈물이 발사됩니다.", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "공격이 하얀색 빛줄기 공격으로 변경됩니다.#빛줄기는 적에게 다단히트로 공격력 x0.33의 피해를 주며 적을 관통합니다.", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "액티브 아이템을 두개 들 수 있습니다.#액티브 아이템은 {{ButtonRT}}버튼으로 교체할 수 있습니다.", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{HolyMantleSmall}} {{BossRoom}}보스방에서 피격 시 피해를 무시하는 보호막을 1회 제공합니다.", -- Blanket
	-- Full old Desc: "↑ {{SoulHeart}}소울하트 +1#↑ {{HealingRed}}빨간하트 +1#{{HolyMantleSmall}} {{BossRoom}}보스방에서 피격 시 피해를 무시하는 보호막을 1회 제공합니다."
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "사용 시 생물 패밀리어를 최대 2마리 제거하고;#{{ArrowGrayRight}} 제거한 패밀리어 수 만큼 {{DevilRoom}}악마방 아이템을 생성합니다.", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} 획득 시 알약을 하나 드랍합니다.#{{Chargeable}} 공격방향으로 장판을 충전하여 뱉습니다.#장판의 효과는 알약을 사용할 때마다 달라집니다.", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "피격 시 5%의 확률로 소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다.", -- Marbles
	-- Full old Desc: "장신구를 3개 드랍합니다.#피격 시 5%의 확률로 소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다."
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "{{Friendly}} 피격 시 매혹된 아군 적을 소환합니다.#피격당하지 않고 방을 넘어갈수록 소환되는 적이 더욱 강해집니다.", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "눈물이 바닥을 튀면서 발사됩니다.#눈물의 최대 사거리가 캐릭터의 사거리보다 40% 더 멀리 나갑니다.#눈물이 튈 때 주변에 있는 적에게 공격력의 25%의 피해를 줍니다.", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 543] = "피격 시 오라를 가진 하얀 똥을 설치합니다.#오라 안에 있을 시 {{TearsSmall}}연사가 2배가 되며 피해를 확률적으로 무시합니다.#{VAR:EFFECTLIST}", -- Hallowed Ground
	-- Full old Desc: "피격 시 오라를 가진 하얀 똥을 설치합니다.#오라 안에 있을 시 {{TearsSmall}}연사가 2배가 되며 피해를 확률적으로 무시합니다."
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "캐릭터가 보는 방향에서 앞뒤로 움직입니다.#접촉하는 적에게 초당 캐릭터의 공격력 x6의 피해를 줍니다.", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "{{Friendly}} 사용 시 방에서 죽인 적의 수만큼 일회용 뼛조각 배리어를 생성하며 확률적으로 아군 해골 적을 소환합니다. (최대 8)", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "캐릭터 주위에 작은 고리가 생깁니다.#{{Petrify}} 고리에 닿은 적을 즉시 멈추게 합니다.", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Mysterious Paper 장신구를 드랍합니다.", -- Divorce Papers
	-- Full old Desc: "↑ {{EmptyBoneHeart}}뼈하트 +1#↑ {{TearsSmall}}연사 +0.7#{{Trinket21}} Mysterious Paper 장신구를 드랍합니다."
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "공격한 방향으로 부메랑처럼 날아가며 맞은 적에게 7의 피해를 줍니다.", -- Jaw Bone
	-- Full old Desc: "공격한 방향으로 부메랑처럼 날아가며 맞은 적에게 7의 피해를 줍니다.#픽업에 닿을 시 픽업을 가져옵니다."
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 550] = "!!! 소지 시 일정 간격으로 캐릭터의 위치에 엄마발이 두개씩 떨어지며 20분이 지나도 보스러시 방이 열립니다.#!!! {{MomBossSmall}}Mom 보스 처치 후 반드시 보스러시를 완료해야만 다음 스테이지로 내려갈 수 있습니다.#아이템 사용 시 그 방 및 웨이브에서 엄마발이 떨어지지 않습니다.#!!! 특정 캐릭터 해금에 필요한 아이템입니다.#!!! 경고: 다른 액티브 아이템으로 교체 후 방 이동 시 이 아이템은 사라집니다.", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "{{Collectible550}} 부러진 삽 손잡이와 조합:#{{Collectible552}} 조합 후 사용 시 다음 스테이지로 가는 다락문을 생성합니다.#{{Player16}} Dark Room 스테이지의 특정 타일 위에 사용 시 The Forgotten 캐릭터를 해금할 수 있습니다.", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "사용 시 다음 스테이지로 가는 다락문을 생성합니다.#{{Player16}} Dark Room 스테이지의 특정 타일 위에 사용 시 The Forgotten 캐릭터를 해금할 수 있습니다.", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} 피격 시 동전을 1개 드랍합니다.", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "똥 파괴 시 픽업이 드랍될 확률이 50% 증가합니다.", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "방 클리어 시 액티브 아이템의 충전량이 1칸 남았을 경우 액티브를 자동으로 충전합니다.", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "{{Collectible44}} 액티브 아이템 사용 시 스테이지 안의 랜덤 방으로 순간이동합니다.", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "!!! 적이 챔피언의 형태로 나올 확률이 2배로 증가합니다.#가능한 경우, 보스가 챔피언의 형태로 나올 확률이 증가합니다.", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "{{Coin}} 동전이 캐릭터에게 끌려옵니다.", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "!!! {{Library}}책방과 {{Shop}}상점에서 {{Collectible33}}The Bible이 등장할 확률이 증가합니다.", -- Rosary Bead
	-- Full old Desc: "↑ {{AngelChanceSmall}}천사방 확률 +50%#!!! {{Library}}책방과 {{Shop}}상점에서 {{Collectible33}}The Bible이 등장할 확률이 증가합니다."
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Collectible93}} 피격 시 5%의 확률로 6.5초간 무적 상태가 되며 접촉한 적에게 40의 피해를 줍니다.#{{LuckSmall}} 행운 38 이상일 때 100% 확률"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "눈물이 커졌다 작아졌다를 반복하며 날아갑니다.", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "눈물이 파동 곡선을 그리며 날아갑니다.", -- Wiggle Worm
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.3#눈물이 파동 곡선을 그리며 날아갑니다."
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "눈물이 원을 그리며 날아갑니다.", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "눈물이 50% 납작해진 모양으로 날아갑니다.#눈물이 적을 살짝 강하게 밀쳐냅니다.", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "!!! 일회용#{{Shop}} 상점에서 아이템 하나를 무료로 구매할 수 있습니다.", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "가시나 장판에 피해를 입지 않습니다.#!!! 적의 공격으로 생성되는 가시에는 피해를 받습니다.", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "장애물 파괴 시 {{Coin}}동전을 드랍합니다.", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} 블랙하트가 나올 확률이 증가합니다.", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} 이터널하트가 나올 확률이 증가합니다.", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "{{GoldenChest}} 황금상자를 열쇠 소모 없이 열 수 있습니다.", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} 피격 시 전체 체력이 반칸 남았을때 블랙하트를 하나 드랍합니다.#!!! 3번 드랍 시 사라집니다.", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "!!! 피격 시 확률적으로 아래의 장신구 효과 중 하나를 발동합니다:#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "!!! 피격 시 확률적으로 아래의 장신구 효과 중 하나를 발동합니다:#{{Collectible327}} The Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Key}} 방 클리어 시 하트가 드랍될 때 80% 확률로 열쇠로 바뀝니다.#↓ 상자에서 하트가 드랍될 확률이 대폭 감소합니다.#{{BlackHeart}} 고정 드랍이 아닌 하트가 드랍될 때 열쇠로 바뀌지 않은 경우 100%의 확률로 블랙하트로 대체됩니다.", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "!!! 일회용#{{Player10}} {{ColorYellow}}(해금 필요){{CR}} 사망 시 The Lost로 부활합니다.", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} 똥 오브젝트에서 동전이 나올 확률이 20% 증가합니다.#동전 획득 시 적을 더 강하게 밀쳐내는 방귀를 뀝니다.", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "!!! 30초마다 일정 확률로:#{{ArrowGrayRight}} 똥을 싸거나;#{{ArrowGrayRight}} 적을 더 강하게 밀쳐내는 방귀를 뀝니다.", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "눈물이 지그재그로 날아갑니다.", -- Hook Worm
	-- Full old Desc: "↑ {{RangeSmall}}사거리 +10#눈물이 지그재그로 날아갑니다."
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 사망 시 22% 확률로 전 방에서 ??? 캐릭터로 부활합니다.", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "피격 시 파란 아군 파리를 하나 소환합니다.", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "방 입장 시 25% 확률로 그 방에서 랜덤 버섯 아이템 효과를 얻거나 맵에 특수방의 위치가 표시됩니다.", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{Heart}} 방 클리어 보상이 10% 확률로 하트로 바뀝니다.#{{Heart}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 하트를 추가로 드랍합니다.", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 방 클리어 보상이 10% 확률로 열쇠로 바뀝니다.#{{Key}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 열쇠를 추가로 드랍합니다.", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "빨간하트가 드랍될 때 {{SoulHeart}}소울하트, {{BlackHeart}}블랙하트, 혹은 {{EmptyBoneHeart}}뼈하트로 바뀔 확률 +10%p", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "피격 시 20%의 확률로 그 방에서 {{DamageSmall}}공격력이 1.8 증가합니다.", -- Red Patch
	-- Full old Desc: "피격 시 20%의 확률로 그 방에서 {{DamageSmall}}공격력이 1.8 증가합니다.#{{LuckSmall}} 행운 8 이상일 때 100% 확률"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 방 클리어 보상이 10% 확률로 폭탄으로 바뀝니다.#{{Bomb}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 폭탄을 추가로 드랍합니다.#{{Trinket53}} 흡수하지 않은 Tick 장신구를 제거할 수 있습니다.", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "방 클리어 보상이 등장할 확률이 대폭 증가합니다.#상자, 색돌, 터진 기계 등에서 33%의 확률로 픽업을 추가로 드랍합니다.", -- Lucky Toe
	-- Full old Desc: "↑ {{LuckSmall}}행운 +1#방 클리어 보상이 등장할 확률이 대폭 증가합니다.#상자, 색돌, 터진 기계 등에서 33%의 확률로 픽업을 추가로 드랍합니다."
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "{{HalfHeart}} 피격 시 빨간하트가 반칸 이하일 때 스테이지 안의 랜덤 방으로 순간이동합니다.", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 방 클리어 보상이 10% 확률로 알약으로 바뀝니다.#{{Pill}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 알약을 추가로 드랍합니다.#{{GoldenChest}} 황금상자에서 {{Pill}}알약이 등장합니다.", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 방 클리어 보상이 10% 확률로 카드로 바뀝니다.#{{Card}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 카드를 추가로 드랍합니다.#{{GoldenChest}} 황금상자에서 {{Card}}카드가 드랍될 확률이 증가합니다.", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = " {{HalfHeart}} 동전 획득 시 50% 확률로빨간하트를 반칸 드랍합니다.", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} 동전 획득 시 50% 확률로 폭탄을 하나 드랍합니다.", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} 동전 획득 시 50% 확률로 열쇠를 하나 드랍합니다.", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} 동전 획득 시 50% 확률로 동전을 하나 더 획득합니다.", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "!!! {{Trinket41}}/{{Collectible479}}를 제외한 {{ColorOrange}}교체 및 버리기 불가{{CR}}#방 입장 시 체력이 60 이상인 적의 체력을 15% 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 한칸 회복합니다.", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "캐릭터를 따라다니며 캐릭터가 공격방향으로 공격력 3.5의 적을 관통하는 눈물을 발사합니다.", -- Isaac's Head
	-- Full old Desc: "캐릭터를 따라다니며 캐릭터가 공격방향으로 공격력 3.5의 적을 관통하는 눈물을 발사합니다."
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} 스테이지 진입 시 이터널하트 +1", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} 악마방 상품 가격이 체력 2칸인 경우 체력 1칸으로 변경됩니다.", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "방을 대각선으로 돌아다닙니다.#공격방향으로 공격력 3.5의 유도 + 장애물을 관통하는 눈물을 발사합니다.", -- ???'s Soul
	-- Full old Desc: "방을 대각선으로 돌아다닙니다.#공격방향으로 공격력 3.5의 유도 + 장애물을 관통하는 눈물을 발사합니다."
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{DamageSmall}} 적 처치 시 6.66%의 확률로 그 방에서 공격력이 0.5씩 (최대 +5) 증가합니다.", -- Samson's Lock
	-- Full old Desc: "{{DamageSmall}} 적 처치 시 6.66%의 확률로 그 방에서 공격력이 0.5씩 (최대 +5) 증가합니다.#{{LuckSmall}} 행운 10 이상일 때 100% 확률"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "{{RedChest}} 모든 상자가 빨간 상자로 교체됩니다.", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "10초마다 색돌이나 {{LadderRoom}}사다리방이 있는 돌이 빛납니다.", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "트롤폭탄을 {{Bomb}}폭탄 픽업으로 바꿉니다.#슈퍼 트롤폭탄을 1+1 {{Bomb}}폭탄 픽업으로 바꿉니다.", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "3초마다 랜덤 벌레 장신구 효과가 발동됩니다.", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "피격 시 확률적으로 {{Collectible105}}그 방의 아이템, {{Collectible166}}픽업, {{Collectible386}}오브젝트 또는 {{Collectible406}}능력치 배율을 바꿉니다.#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "피격 시 확률적으로 {{Collectible105}}그 방의 아이템, {{Collectible166}}픽업, {{Collectible386}}오브젝트 또는 {{Collectible406}}능력치 배율을 바꿉니다."
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "적과 픽업이 캐릭터에게 끌려옵니다.", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "때때로 그 방의 적들이 혼란에 걸립니다.", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "때때로 파란 아군 거미를 하나 소환합니다.", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "폭탄이 설치될 때 독 장판이 생성됩니다.", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "{{Battery}} 방 클리어 보상이 배터리 픽업으로 교체될 확률이 5%에서 6.67%로 증가합니다.#{{Battery}} 픽업 드랍 시 2%의 확률로 배터리 픽업으로 바꿉니다.#방 클리어 시 5% 확률로 충전량을 한칸 더 채워줍니다.", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "폭탄이 터질 때 10% 확률로 {{Bomb}}폭탄 픽업이 드랍됩니다.", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "{{LadderRoom}} 장애물 파괴 시 사다리방이 등장할 확률 +0.5%", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "방마다 다른 랜덤 장신구의 효과가 발동됩니다.", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "{{Chest}} 상자에서 50% 확률로 픽업이 추가로 드랍되거나 Attack Fly가 나옵니다.", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "공격이 적을 더 강하게 밀쳐냅니다.", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "적에게 걸린 상태이상의 지속시간이 2배로 증가합니다.", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "{{Card}}카드 또는 {{Pill}}알약 사용 시 25% 확률로 같은 효과의 픽업이 드랍됩니다.", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "피격 후 무적시간이 2배로 증가합니다.", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} 스테이지 진입 시 15% 확률로 보물방 아이템이 2개가 나오며 하나를 선택하면 나머지는 사라집니다.", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} 상점을 열쇠 소모 없이 열 수 있습니다.", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "{{Shop}}상점과 {{SecretRoom}}비밀방에서 Greed/Super Greed가 등장하지 않습니다.#이미 Greed를 처치하였을 경우 재입장 시 상점이 복원됩니다.#{{Coin}} 방 클리어 시 하트가 등장할 경우 33%의 확률로 동전으로 바뀝니다.", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "!!! 기부기계에 기부 시 33%의 확률로 아래 효과 중 하나 발동:#{{ArrowGrayRight}} {{Coin}}동전 +1(40%)#{{Blank}} {{Heart}}빨간하트 1칸 회복(40%)#{{Blank}} {{LuckSmall}}행운 +1(15%)#{{Blank}} 거지 소환(5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "똥을 파괴할 때마다 파란 아군 파리를 하나 소환합니다.", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "{{HealingRed}} 열쇠를 소모할 때마다 체력 반칸을 회복합니다.#{{Heart}} 빨간하트 반칸 픽업을 한칸으로 바꿉니다.", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "{{TreasureRoom}}보물방, {{Shop}}상점, {{DevilRoom}}악마방, {{AngelRoom}}천사방에서 99% 확률로 액티브 아이템이 나오지 않습니다.", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "패밀리어들 사이의 간격이 가까워집니다.", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "!!! 똥 파괴시 똥이 폭발합니다.", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "일반 똥이 33%의 확률로 검은 똥으로 대체됩니다.#{{BlackHeart}} 검은 똥 파괴시 5%의 확률로 블랙하트를 드랍합니다.", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "각 능력치가 캐릭터 기본 능력치보다 높을 시 각 능력치가 33% 증가합니다.", -- Cracked Crown
	-- Full old Desc: "↑ {{TearsSmall}}연사 +0.2#각 능력치가 캐릭터 기본 능력치보다 높을 시 각 능력치가 33% 증가합니다."
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "방 입장 시 확률적으로 파리류 적들이 공격하지 않거나 약해집니다.", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "파란 아군 거미 또는 파리의 소환량이 2배로 증가합니다.", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 95] = "!!! {{LuckSmall}}행운 32 이상일 때 100% 확률", -- Black Tooth
	-- Full old Desc: "{{Poison}} 3%의 확률로 공격력 2배의 적을 중독시키는 공격이 나갑니다.#!!! {{LuckSmall}}행운 32 이상일 때 100% 확률"
	-- English: "{{Poison}} {VAR:LUCKCHANCE}% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"

	[T_ID .. 97] = "{{Collectible474}} Tonsil은 캐릭터를 따라다니며 적의 탄환을 막아줍니다.", -- Tonsil
	-- Full old Desc: "{{Collectible474}} 12~20회 피격 시 Tonsil을 획득합니다.#{{Collectible474}} Tonsil은 캐릭터를 따라다니며 적의 탄환을 막아줍니다."
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10%의 확률로 접착 눈물이 나가며 접착 눈물이 적에게 붙을 시 60초동안 지속 피해를 줍니다.#접착 눈물을 발사할 때 50%의 확률로 유도 효과가 생깁니다.", -- Nose Goblin
	-- Full old Desc: "10%의 확률로 접착 눈물이 나가며 접착 눈물이 적에게 붙을 시 60초동안 지속 피해를 줍니다.#접착 눈물을 발사할 때 50%의 확률로 유도 효과가 생깁니다."
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10%의 확률로 공격이 무언가에 부딪힐 때 반대 각도로 튕겨져 나갑니다.", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "{{Battery}} 액티브 아이템의 충전량이 최대치일때:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "{{Battery}} 액티브 아이템의 충전량이 최대치일때:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +0.5#{{ArrowGrayRight}} {{TearsSmall}}연사 +0.2#{{ArrowGrayRight}} {{RangeSmall}}사거리 +0.75#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.5#{{ArrowGrayRight}} {{ShotspeedSmall}}탄속 +0.1#{{ArrowGrayRight}} {{LuckSmall}}행운 +1"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "{{Battery}} 액티브 아이템의 충전량이 남아있지 않을때:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "{{Battery}} 액티브 아이템의 충전량이 남아있지 않을때:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +1.5#{{ArrowGrayRight}} {{TearsSmall}}연사 +0.4#{{ArrowGrayRight}} {{RangeSmall}}사거리 +1.5#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.5#{{ArrowGrayRight}} {{ShotspeedSmall}}탄속 +0.3#{{ArrowGrayRight}} {{LuckSmall}}행운 +2"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} 스테이지 진입 시 비밀방이 하나 더 생성됩니다.", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "소지중인 동전, 폭탄, 열쇠의 개수가 모두 같을 때 하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 픽업이 1+1로 나옵니다.", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "캐릭터와 패밀리어가 생성하는 장판의 범위가 넓어집니다.", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "피격 시 빨간하트가 가장 우선적으로 소모됩니다.#!!! 악마방/천사방 확률을 방어해 주지 않습니다.", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "!!! 일회용#캐릭터가 폭발에 휘말릴 경우 확률적으로 {{UnknownHeart}}하트, {{Coin}}동전, {{Key}}열쇠, {{Trinket}}장신구를 하나씩 드랍합니다.", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "캐릭터의 위치를 기준으로 캐릭터를 따라오는 패밀리어의 위치를 고정시킵니다.#공전형 패밀리어가 회전하지 않습니다.", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} 7, 8 스테이지에서 상점이 생성됩니다.", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} 7, 8 스테이지에서 보물방이 생성됩니다.", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{TreasureRoom}} 스테이지 진입 시 보물방에 재입고 기계가 생성됩니다.", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "{{Bomb}} 방 입장 시 적과 접촉 시 폭발하는 빨간 아군 파리를 하나 소환합니다.", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "{{Poison}} 방 입장 시 적을 중독시키는 초록 아군 파리를 하나 소환합니다.", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "{{Slow}} 방 입장 시 적을 느려지게 하는 노란 아군 파리를 하나 소환합니다.", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "방 입장 시 공격력 4배의 피해를 주는 검은 아군 파리를 하나 소환합니다.", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "방 입장 시 하얀 아군 파리를 1~4마리 소환합니다.", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "적 처치 시 5%의 확률로 그 방에서 비행 능력을 얻습니다.", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HealingRed}} 스테이지 진입 시 체력을 반칸 회복합니다.", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "{{Battery}} {{BossRoom}}보스방 최초 입장 시 액티브 아이템의 충전량을 모두 충전합니다.", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{HolyMantleSmall}} 스테이지 진입 시 피해 1번 무시하는 보호막을 생성합니다.", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "액티브 아이템 사용 시 사용한 액티브 아이템을 내려놓습니다.#피격 시 2% 확률로 소지중인 패시브 아이템 중 하나를 내려놓습니다.", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "{{AngelRoom}} Uriel/Gabriel이 Key Piece 대신 천사방 아이템을 드랍합니다.#!!! 한 종류의 Key Piece만 소지 시 Key Piece를 드랍합니다.", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "방에 입장 시 들어왔던 문이 닫히지 않습니다.", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "{{ColorCyan}}모든 캐릭터{{CR}}와 패밀리어 사이에 전류 레이저가 흐르며;#{{ArrowGrayRight}} 레이저에 접촉한 적은 초당 6의 피해를 받습니다.", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "동전 획득 시 파란 아군 파리를 하나 소환합니다.", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "패밀리어의 공격에 유도 효과가 생깁니다.", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "그 스테이지의 시작방으로 순간이동합니다.", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "엄마발이 랜덤 적에게 떨어져 300의 피해를 줍니다.#!!! 적이 없는 방이나 {{MomBossSmall}}Mom 전투 중일 때 사용 시 엄마발이 캐릭터의 위치에 떨어집니다.", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} 보스방으로 순간이동합니다.", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "{{Heart}}하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠를 하나씩 드랍합니다.", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} 상점으로 순간이동합니다.", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "{{Slotmachine}} 도박기계를 소환합니다.#{{ArrowGrayRight}} {{FortuneTeller}} 25%의 확률로 운세기계가 대신 등장", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{BloodDonationMachine}} 헌혈기계를 하나 생성합니다.", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "{{Collectible65}} 방 안에 트롤폭탄을 6개 생성합니다.", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} 보물방으로 순간이동합니다.", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} 비밀방으로 순간이동합니다.", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "{{Beggar}} 랜덤 거지를 소환합니다.", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} 소지 중인 폭탄 x2", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} 소지 중인 동전 x2", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} 소지 중인 열쇠 x2", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{Heart}} 소지 중인 빨간하트 x2", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} 그 방의 픽업을 폭탄으로 바꿉니다.", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} 그 방의 픽업을 동전으로 바꿉니다.", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}}그 방의 픽업을 열쇠로 바꿉니다.", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} 그 방의 픽업을 하트로 바꿉니다.", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChanceSmall}} 악마방 또는 천사방으로 순간이동합니다.", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "그 방의 장애물을 제거합니다.", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "그 방의 픽업을 복제합니다.", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "{{Collectible84}} 다음 스테이지로 가는 다락문을 생성합니다.", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursedSmall}} Labyrinth 및 특수 시드를 제외한 그 스테이지의 저주를 제거합니다.", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} 소울하트 +1#{{CurseCursedSmall}} Labyrinth 및 특수 시드를 제외한 그 스테이지의 저주를 제거합니다."
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "{{Collectible105}} 그 방의 아이템을 다른 아이템으로 바꿉니다.", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "{{Rune}} 랜덤 룬 효과를 발동합니다.#25% 확률로 Blank Rune을 드랍합니다.", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "그 방의 픽업을 흡수하고 흡수한 개수만큼 파란 아군 거미 및 파리를 소환합니다.#그 방의 적에게 40의 피해를 줍니다.", -- Black Rune
	-- Full old Desc: "그 방의 아이템을 흡수하고 흡수한 만큼 랜덤 능력치가 2개씩 증가합니다.#그 방의 픽업을 흡수하고 흡수한 개수만큼 파란 아군 거미 및 파리를 소환합니다.#그 방의 적에게 40의 피해를 줍니다."
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "{{ColorOrange}}캐릭터의 몸통이 바라보는 방향{{CR}}으로 카드를 던지며 카드에 맞은 적은 즉사합니다.#!!! Delirium은 면역", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "{{Shop}}상점 또는 {{DevilRoom}}악마방에서 사용 시 모든 상품을 무료로 획득할 수 있습니다.", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "게임 힌트를 화면에 출력합니다.", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "방 전체에 똥을 생성합니다.", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "사용 시 사망하며 10개의 아이템 또는 픽업을 생성합니다.", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "그 방의 닫혀있는 문을 모두 엽니다.", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "소지중인 액티브 아이템의 효과를 발동합니다.", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "그 방의 아이템과 픽업을 다른 아이템으로 바꿉니다.", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "엄마손 2개가 랜덤 적에게 떨어져 적을 붙잡습니다.", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{HolyMantle}} 사용한 방에서 피격 시 피해를 1회 무시하는 방어막을 제공합니다.#25% 확률로 Holy Card를 드랍합니다.", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}", -- Huge Growth
	-- Full old Desc: "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +7#{{ArrowGrayRight}} {{RangeSmall}}사거리 +30#{{ArrowGrayRight}} 장애물을 부술 수 있습니다."
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{ArrowGrayRight}} {{Slow}} 그 방의 적들이 영구적으로 느려집니다.", -- Era Walk
	-- Full old Desc: "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.5#{{ArrowGrayRight}} {{ShotspeedSmall}}탄속 -1#{{ArrowGrayRight}} {{Slow}} 그 방의 적들이 영구적으로 느려집니다."
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "독방귀를 뀝니다.", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "체력 한칸의 피해를 받습니다.", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "{{Bomb}}폭탄과 {{Key}}열쇠의 개수를 서로 바꿉니다.", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "캐릭터의 위치에 점화된 폭탄 5개를 생성합니다.", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 10] = "{{Blank}} (3번 사용 시 1회 한정 {{Heart}}최대 체력 +1)#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "무효과#{{Blank}} (3번 사용 시 1회 한정 {{Heart}}최대 체력 +1)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "스테이지 안의 랜덤 방으로 순간이동합니다.#{{ErrorRoom}} 낮은 확률로 오류방으로 이동합니다.", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "액티브 아이템 충전량을 모두 충전하고 배터리 픽업을 1~2개 드랍합니다.", -- 48 Hour Energy!
	-- Full old Desc: "액티브 아이템 충전량을 모두 충전하고 배터리 픽업을 1~2개 드랍합니다."
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "빨간하트가 한칸이 되며 {{Heart}}빨간하트 픽업을 1~4개 드랍합니다.", -- Hematemesis
	-- Full old Desc: "빨간하트가 한칸이 되며 {{Heart}}빨간하트 픽업을 1~4개 드랍합니다."
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "3초간 캐릭터가 마비 상태가 됩니다.", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "사용 시 그 스테이지에서 {{SecretRoom}}{{SuperSecretRoom}}비밀방이 자동으로 열립니다.", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "그 방의 적을 3초간 {{Charm}}매혹시킵니다.", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLostSmall}} Lost 저주에 걸리며 맵을 볼 수 없습니다.", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "사용 시 캐릭터의 주위에 커다란 노란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 줍니다.", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "눈물이 30초간 대각선으로 나갑니다.", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "그 방에서 캐릭터가 받는 모든 피해를 절반으로 줄여줍니다. (최소 반칸)", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "그 방에서 캐릭터가 받는 모든 피해가 체력 1칸 이상으로 고정됩니다.", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "2초간 캐릭터의 위치에 똥을 생성합니다.", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMazeSmall}} Maze 저주에 걸리며 방 이동 시 스테이지 안의 다른 방으로 순간이동하거나 두개의 랜덤 방의 위치가 서로 바뀝니다.", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 35] = "그 방의 똥의 개수만큼 파란 아군 거미를 소환합니다.", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "그 방의 적의 수만큼 파란 아군 거미를 소환합니다.", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "30초마다 총 3번 화면의 화질이 감소합니다.", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "캐릭터가 미끄러지는 갈색 장판이 생성됩니다.", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "적을 {{Slow}}둔화시키는 검은 장판을 생성합니다.", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "그 방의 적들이 영구적으로 {{Slow}}느려집니다.", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "그 방의 적들이 빨라집니다.", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다.", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "바라보는 방향으로 {{Collectible149}}폭발하는 독성 눈물을 발사합니다.", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "마지막으로 사용한 알약을 드랍합니다.", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
