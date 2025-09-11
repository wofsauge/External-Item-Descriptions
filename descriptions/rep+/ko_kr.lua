---------------------------------------
-----  Basic Korean descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "ko_kr"

-- 1.7.9.11 Conditional todos
-- T.??? + Bombs are Key

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "레몬빛 실수", "사용 시 캐릭터의 주위에 노란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 주며 방을 나가기 전까지 유지됩니다."}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "죽은 새", "피격 시 적을 따라다니며 접촉한 적에게 초당 4.3의 피해를 줍니다.#{{HalfHeart}} 빨간하트가 반칸 이하일 때 항상 발동"}, -- Dead Bird
	-- Change: tears up -> fire rate up
	[120] = {"120", "이상한 버섯", "↓ {{DamageSmall}}공격력 {{ColorOrange}}증가량{{CR}} 배율 x0.9#↓ {{DamageSmall}}추가 공격력 -0.4#↑ {{TearsSmall}}연사(+상한) +1.7#↑ {{SpeedSmall}}이동속도 +0.3#캐릭터의 머리가 작아집니다."}, -- Odd Mushroom
	-- Change: tears up -> fire rate up
	[141] = {"141", "분장 소년", "{{Coin}} 동전 7개를 드랍합니다.#랜덤 페니류 장신구를 하나 드랍합니다."}, -- Pageant Boy
	-- Change: tears up per use
	[186] = {"186", "피의 권리", "{{EmptyHeart}} 사용 시 체력을 1칸 깎고;#{{ArrowGrayRight}} {{TearsSmall}} 연사(+상한) +0.48#{{ArrowGrayRight}} 그 방의 적에게 40의 피해를 줍니다.#!!! 그 방에서 연속적으로 사용 시 2번째 사용부터;#{{ArrowGrayRight}} {{TearsSmall}} 연사(+상한) +0.15#{{ArrowGrayRight}} 깎이는 체력이 반칸으로 줄어듭니다.#빨간하트를 우선적으로 깎습니다.#증가된 연사 수치는 스테이지 진입 시 초기화됩니다."}, -- Blood Rights
	-- Change: added "ability to block shots"
	[281] = {"281", "샌드백", "방 안을 돌아다니며 6초 간격으로 적을 유인합니다.#적의 탄환을 막아줍니다."}, -- Punching Bag
	-- Change:
	[329] = {"329", "루도비코 요법", "↑ {{ShotspeedSmall}}탄속 +0.2#공격이 공격키로 조종 가능한 원격 눈물 공격으로 변경됩니다."}, -- The Ludovico Technique
	-- Change:
	[350] = {"350", "독성 쇼크", "{{Poison}} 방 입장 시 그 방의 적에게 공격력 x2의 피해를 줍니다.#적 처치시 초록 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다."}, -- Toxic Shock
	-- Change: Complete rewrite
	[351] = {"351", "대빵 큰 콩", "{{Petrify}} 사용 시 그 방의 장애물을 파괴하고 적에게 100의 폭발 + 석화 피해를 주며;#{{ArrowGrayRight}} {{Poison}}캐릭터 주변의 적에 초당 5의 추가 독성 피해를 줍니다.#{{BossRoom}} 보스방에서 사용 시 D2(6스테이지)의 경우 보스러시가, W2(8스테이지)의 경우 Blue Womb으로 향하는 문이 열립니다."}, -- Mega Bean
	-- Change : Up to 2 items
	[381] = {"381", "에덴의 축복", "↑ {{TearsSmall}}연사 +0.7#다음 게임에서 랜덤 아이템을 하나 들고 시작합니다.#{{Blank}} {{ColorGray}}(최대 2개)"}, -- Eden's Blessing
	-- Change: Bomb damage +85(does not stack with mr. mega)
	[420] = {"420", "검은 가루", "{{Bomb}} 폭탄 피해량 +85#{{Bomb}} 폭탄의 범위가 넓어집니다.#모닥불을 끄면 폭발합니다. (캐릭터 피해 없음)#캐릭터가 지나간 곳에 검은 가루가 남으며;#{{ArrowGrayRight}} 가루로 원을 그리면 마법진이 생성됩니다.#마법진 위의 적에게 4초간 최대 130의 피해를 줍니다."}, -- Black Powder
	-- Change: Complete rewrite
	[436] = {"436", "우유!", "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#{{TearsSmall}} 10회 방어 시 사라지며 그 스테이지에서 연사(+상한) +1#스테이지 진입 시 복원됩니다."}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "납작한 콩", "4초동안 공격을 멈추지 않고 공격을 유지할 시 그 방에서 10초동안 유지되는 갈색 구름이 생성되며;#{{ArrowGrayRight}} 구름은 점점 커지며 닿은 적은 크기에 반비례하여 최대 공격력 x5의 피해를 줍니다.#구름은 공격으로 밀 수 있습니다."}, -- Linger Bean
	[461] = {"461", "기생자", "15%의 확률로 알주머니 공격이 나갑니다.#알주머니 명중 시 파란 아군 거미 또는 파리를 소환합니다.#{{LuckSmall}} 행운 5 이상일 때 50% 확률"}, -- Parasitoid
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "허쉬", "대각선으로 이동하며 접촉하는 적에게 초당 30의 피해를 줍니다.#공격키를 누르고 있으면 움직이지 않는 대신 적의 탄환을 막으며;#{{ArrowGrayRight}} 8방향으로 공격력 6의 눈물을 발사합니다."}, -- Hushy
	-- Change: extended timer for isaac's death for certain boss rooms
	[475] = {"475", "플랜 C", "사용 시 그 방의 적에게 9,999,999의 피해를 주며 {{ColorRed}}3초 후 사망합니다{{CR}}.#{{ArrowGrayRight}} {{ColorGray}}(특정 보스 {{DeliriumSmall}}/{{MotherSmall}} 의 경우 13~15초 후 사망)"}, -- Plan C
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "데이터마이너", "{{ArrowUpDown}} 사용 시 능력치가 랜덤으로 증가하거나 감소, 그 방에서 랜덤 효과가 부여되며;#{{ArrowGrayRight}} {{Collectible721}}그 방의 아이템을 오류 아이템으로 바꿉니다.#!!! 그 방의 스프라이트가 망가집니다."}, -- Dataminer
	-- Change:
	[482] = {"482", "클리커", "사용 시 가장 최근에 획득한 패시브 아이템을 50%의 확률로 제거하고;#{{ArrowGrayRight}} 캐릭터를 다른 랜덤 캐릭터로 바꿉니다."}, -- Clicker
	-- Change: Complete rewrite
	[510] = {"510", "정신착란", "{{Friendly}} {{DeliriumSmall}} 사용 시 Delirium 버전의 아군 보스를 소환합니다.#소환된 보스는 방을 나가도 유지되나 체력이 서서히 감소합니다.#재사용 시 이전에 소환한 보스는 사라집니다."}, -- Delirious
	-- Change:
	[554] = {"554", "넘나 무서운 것", "↑ {{TearsSmall}}연사 +0.5#↑ {{ShotspeedSmall}}탄속 +0.2#{{Fear}} 캐릭터와 가까이 있는 적을 도망가게 합니다."}, -- 2Spooky
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "너무 아파", "피격 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사하며;#{{ArrowGrayRight}} 그 방에서 {{TearsSmall}}연사(+상한) +1.2#{{Blank}} (2회 피격 시부터 {{TearsSmall}}+0.4)#그 방에서 공격이 무언가에 부딪힐 때 빨간 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다."}, -- It Hurts
	[593] = {"593", "화성", "이동키를 두번 누르면 누른 방향으로 돌진하여 접촉한 적에게 공격력 x4 +8의 피해를 줍니다.#{{ArrowGrayRight}} {{Burning}} 돌진 중 적 및 장애물에 부딪힐 시 주변의 적에게 10의 화염 피해를 줍니다.#{{TimerSmall}} (쿨타임 3초/{{Collectible130}}{{Collectible181}}1초)"}, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "목성", "↑ {{Heart}}최대 체력 +2#↓ {{SpeedSmall}}이동속도 -0.3#{{Poison}} 이동하지 않으면 이동속도가 0.5 증가하며, 증가한 상태에서 이동 시 공격력 x0.5의 독가스를 발사하고 이동속도가 다시 감소합니다.#캐릭터가 독구름에 면역이 됩니다."}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "사악한 부적", "↑ {{LuckSmall}}행운 +2#!!! 캐릭터가 이하 효과에 면역:#{{Burning}} 모닥불 및 화염 피해#{{Confusion}} 혼란#{{Fear}} 공포#{{Slow}} 거미줄#{{Poison}} 독구름#{{ArrowGrayRight}} 적의 장판에 닿아도 1초 이내에 벗어나면 피해를 받지 않습니다."}, -- Evil Charm
	-- Change : removed +2 Soul Hearts
	[643] = {"643", "계시", "비행 능력을 얻습니다.#{{Chargeable}} 공격키를 2.5초 이상 누르면 충전되며 공격키를 떼면 일직선 방향으로 레이저를 발사합니다.#레이저는 다단히트로 적에게 최대 15번의 피해를 줍니다."}, -- Revelation
	-- Change: removed x1.5 dmg mult
	[651] = {"651", "베들레헴의 별", "{{BossRoom}} 오라를 가지고 보스방이 있는 곳으로 이동합니다.#캐릭터가 오라 안에 있을 시:#{{ArrowGrayRight}} {{DamageSmall}}공격력 배율 x1.2#{{ArrowGrayRight}} {{TearsSmall}}연사 배율 x2.5#{{ArrowGrayRight}} 피해를 확률적으로 무시하고 공격에 유도 효과가 생깁니다."}, -- Star of Bethlehem
	-- Change: added shop portals
	[660] = {"660", "카드점", "스테이지 첫 방에 색상에 따라 특정한 장소로 이동할 수 있는 포탈이 생성됩니다.#{{ArrowGrayRight}} {{ColorRed}}빨강: {{CR}}{{BossRoom}}보스방#{{Blank}} {{ColorBlue}}파랑: {{CR}}{{SecretRoom}}비밀방#{{Blank}} {{ColorYellow}}노랑: {{CR}}{{TreasureRoom}}보물방#{{Blank}} {{ColorGreen}}초록: {{CR}}{{Shop}}상점#방을 나가면 포탈이 사라집니다."}, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "꼬마 포탈", "{{Throwable}} 공격키를 2번 연속 누르면 공격 방향으로 날아가며;#{{ArrowGrayRight}} 접촉한 적에게 피해를 주고 픽업에 접촉 시 픽업을 파란 아군 파리로 바꿉니다.#여러 개의 픽업을 바꿀 시 차원의 방으로 이동하는 포탈을 생성합니다.#차원의 방은 현재 게임 내내, 스테이지 이동 시에도 유지됩니다.#스테이지 진입 시 포탈이 다시 복원됩니다."}, -- Lil Portal
	-- Change: added "every wisp spawned has a high chance to be of a special variety"
	[685] = {"685", "도깨비불 든 병", "{{Collectible584}} 사용 시 위습을 소환합니다.#사용할 때마다 소환하는 위습의 개수가 증가합니다.#높은 확률로 특별한 위습이 소환됩니다."}, -- Jar of Wisps
	-- Change: tem quality now impacts the damage of the summoned locust. Locusts now inherit many different effects based on the item destroyed by Abyss.
	[706] = {"706", "무저갱", "사용 시 그 방의 아이템을 심연의 파리로 바꿉니다.#원본 아이템에 따라 심연의 파리의 능력이 달라집니다.#심연의 파리는 공격방향으로 돌진하며 접촉한 적에게 원본 아이템의 등급에 따라 피해를 줍니다.#!!! {{NoLB}}{{Quality0}}:0.5x/{{Quality1}}:0.75x/{{Quality2}}:1.0x/{{Quality3}}:1.5x/{{Quality4}}:2.0x"}, -- Abyss

}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: Added champion loot information
	[5] = {"5", "퍼플 하트 훈장", "!!! 적이 챔피언의 형태로 나올 확률이 2배로 증가합니다.#가능한 경우, 보스가 챔피언의 형태로 나올 확률이 증가합니다.#챔피언 몬스터 처치 시 보상 드랍 확률 +20%p#챔피언 몬스터 보상이 2배로 등장합니다."}, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = {"7", "묵주 구슬", "{{AngelChanceSmall}} {{ColorOrange}}보스방 클리어로 악마방으로 향하는 문 등장 시{{CR}} 천사방으로 향하는 문으로 바뀝니다.#!!! {{Library}}책방과 {{Shop}}상점에서 {{Collectible33}}The Bible이 등장할 확률이 증가합니다."}, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = {"16", "엄마의 발톱", "클리어하지 않은 방에서 장신구를 버리면;#{{ArrowGrayRight}} {{MomBossSmall}} 그 위치에 엄마발이 떨어집니다."}, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = {"23", "실종 포스터", "!!! 일회용#{{Player10}} {{ColorYellow}}(해금 필요){{CR}} 사망 시 The Lost로 부활합니다.#{{SuperSecretRoom}} 스테이지 진입 시 33%의 확률로 일급비밀방의 위치를 보여줍니다."}, -- Missing Poster
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "진드기", "!!! {{Trinket41}}/{{Trinket135}}/{{Collectible479}}를 제외한 {{ColorOrange}}교체 및 버리기 불가{{CR}}#방 입장 시 체력이 60 이상인 적의 체력을 15% 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 한칸 회복합니다."}, -- Tick
	-- Change: added +0.5 damage
	[66] = {"66", "게으른 벌레", "↑ {{DamageSmall}}공격력 +0.5#↓ {{ShotspeedSmall}}탄속 -0.5"}, -- Lazy Worm
	-- Change: Complete rewrite
	[70] = {"70", "머릿니", "방 클리어 시 파란 아군 거미를 하나 소환합니다."}, -- Louse
	-- Change: Added more loot information
	[76] = {"76", "포커 칩", "{{Chest}} 상자에서 50% 확률로 픽업이 추가로 드랍되거나 Attack Fly가 나옵니다.#상자에서 아이템이 나올 때 {{Quality3}}등급 + 랜덤 배열의 아이템이 나옵니다.#슬롯머신의 성공 확률 및 보상 빈도가 증가합니다."}, -- Poker Chip
	-- Change: Added additional effects
	[85] = {"85", "업보", "{{DonationJam}} 기부기계 고장 확률 감소#!!! {{DonationMachine}}기부기계/{{BloodDonationMachine}}{{Confessional}}헌혈기/{{Beggar}}거지/{{RestockMachine}}재입고에 기부 시 33%의 확률로 아래 효과 중 하나 발동:#{{ArrowGrayRight}} {{NoLB}}{{Coin}} 동전 +1 ({{DonationMachine}}/{{Beggar}})#{{Blank}} {{NoLB}}{{Heart}} 빨간하트 1칸 회복 ({{DonationMachine}}/{{Beggar}}/{{BloodDonationMachine}}{{Confessional}})#{{Blank}} {{NoLB}}{{LuckSmall}} 행운 +1 ({{DonationMachine}}/{{Beggar}}/{{BloodDonationMachine}}{{Confessional}}/{{RestockMachine}})#{{Blank}} {{NoLB}}{{Beggar}} 거지 소환 ({{DonationMachine}}/{{BloodDonationMachine}}{{Confessional}})"}, -- Karma
	-- Change: Added damage up information
	[89] = {"89", "미아 방지끈", "{{DamageSmall}} 패밀리어 피해량 +25%#패밀리어들 사이의 간격이 가까워집니다."}, -- Child
	-- Change: 33% chance, Spawns blue fly on new room
	[93] = {"93", "다 쓴 기저귀", "방 입장 시 33%의 확률로 파리류 적들이 공격하지 않거나 약해집니다.#방 클리어 시 파란 아군 파리를 하나 소환합니다."}, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "편도선", "6~12 피격 시 Tonsil을 획득합니다.#Tonsil은 캐릭터를 따라다니며 적의 탄환을 막아줍니다."}, -- Tonsil
	[99] = {"99", "탱탱볼", "확률적으로 공격이 무언가에 부딪힐 때 반대 각도로 튕겨져 나갑니다.#{{LuckSmall}} 행운 18 이상일 때 100% 확률"}, -- Super Ball
	-- Change: Added +2 Tears
	[103] = {"103", "똑같다!", "!!! 소지중인 동전, 폭탄, 열쇠의 개수가 모두 같을 때:#{{ArrowGrayRight}} {{TearsSmall}} 연사(+상한) +2#{{ArrowGrayRight}} {{Heart}}하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 픽업이 1+1로 나옵니다."},
	[104] = {"104", "창사골", "!!! 일회용#피격 시 5% 확률로 그 방의 아이템을 하나 생성합니다."}, -- Wish Bone
	[105] = {"105", "점심 도시락", "!!! 일회용#피격 시 5% 확률로 {{Collectible22}}Lunch ({{Heart}}최대 체력 +1) 아이템을 생성합니다."}, -- Bag Lunch
	-- exclusive to ko_kr
	[121] = {"121", "나무 십자가", "{{HolyMantle}} 스테이지 당 1번 피해를 무시하는 보호막을 생성합니다."}, -- Wooden Cross
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "짧은 도화선", "!!! 폭탄이 터지는 속도가 빨라집니다.#{{Bomb}} 폭탄 피해량 +15%"}, -- Short Fuse
	-- exclusive to ko_kr
	[135] = {"135", "라이터", "{{Burning}} 방 입장 시 20%의 확률로 그 방의 적에게 2초간 화상을 입힙니다.#{{LuckSmall}} 행운 40 이상일 때 100% 확률#{{Trinket53}} 흡수하지 않은 Tick 장신구를 제거할 수 있습니다."}, -- A Lighter
	-- Change: Added coin type based information
	[172] = {"172", "저주받은 동전", "동전 획득 시 랜덤 방으로 순간이동합니다.#동전 종류에 따라 이동하는 방의 종류가 달라질 수 있음"}, -- Cursed Penny
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------
local goldenTrinketData = {
	[85] = {fullReplace = nil, findReplace = true, mult = 3},
}
EID:updateDescriptionsViaTable(goldenTrinketData, EID.descriptions[languageCode].goldenTrinketData)

local goldenTrinketEffects = {
	--[7] = { "{{AngelChanceSmall}} 천사방 확률 추가 증가" },
	--[14] = {"희생방 가시의 피해가 절반으로 감소합니다.", "모든 피해가 절반으로 감소합니다."},
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"방 입장 시 체력이 60 이상인 적의 체력을 {{ColorGold}}30%{{CR}} 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 {{ColorGold}}두칸{{CR}} 회복합니다.",
		"!!! {{Trinket41}}/{{Trinket135}}/{{Collectible479}}를 제외한 {{ColorOrange}}교체 및 버리기 불가{{CR}}#방 입장 시 체력이 60 이상인 적의 체력을 {{ColorGold}}30%{{CR}} 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 {{ColorGold}}두칸{{CR}} 회복합니다.",
		"방 입장 시 체력이 60 이상인 적의 체력을 {{ColorGold}}30%{{CR}} 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 {{ColorGold}}세칸{{CR}} 회복합니다.",
	},
	[85] = { "행운 %+1", "행운 +2", "행운 +3" },
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

---------- Cards ----------
local cards={
	[11] = {"11", "X - 운명의 수레바퀴", "{{Slotmachine}} 도박기계를 소환합니다.#{{ArrowGrayRight}} {{FortuneTeller}} 24%의 확률로 운세기계가 대신 등장#{{ArrowGrayRight}} {{CraneGame}} 1%의 확률로 크레인게임이 대신 등장"}, -- X - Wheel of Fortune
	[32] = {"32", "하갈라즈", "그 방의 장애물을 제거합니다.#그 방의 돌 타입 적을 제거합니다."}, -- Hagalaz
	[38] = {"38", "벨카노", "{{Collectible706}} 그 방에서 심연의 파리 3마리를 소환합니다."}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs={
	[11] = {"{{Slotmachine}} 도박기계를 {{ColorShinyPurple}}2개{{CR}} 소환합니다.#{{ArrowGrayRight}} {{FortuneTeller}} 각각 24%의 확률로 운세기계가 대신 등장#{{ArrowGrayRight}} {{CraneGame}} 각각 1%의 확률로 크레인게임이 대신 등장"}, -- Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------
local horsepills={
	-- Change: Teleports to a special room instead of a random room
	[20] = {"19", "순간이동약", "스테이지 안의 {{ColorCyan}}랜덤 특수방{{CR}}으로 순간이동합니다."}, -- Telepills
	-- Change: Forgets all previously identified pills
	[26] = {"25", "건망증", "{{CurseLostSmall}} Lost 저주에 걸리며 맵을 볼 수 없습니다.#{{ColorYellow}}알약의 효과가 다시 가려집니다."}, -- Amnesia
	-- Change: Added full heal information
	[29] = {"28", "진통제!", "{{HealingRed}} {{ColorCyan}}체력을 모두 회복합니다.{{CR}}#{{Timer}} 그 방에서 캐릭터가 받는 모든 피해를 절반으로 줄여줍니다. (최소 반칸)"}, -- Percs!
	-- Change: Added broken heart
	[30] = {"29", "과다복용!", "↓ {{BrokenHeart}}{{ColorYellow}}소지 불가능 체력 +1{{CR}}#{{Timer}} 그 방에서 캐릭터가 받는 모든 피해가 체력 1칸 이상으로 고정됩니다."}, -- Addicted!
	-- Change: Added additional curses information
	[32] = {"31", "???", "{{CurseMazeSmall}} Maze 저주에 걸리며 방 이동 시 스테이지 안의 다른 방으로 순간이동하거나 두개의 랜덤 방의 위치가 서로 바뀝니다.#{{CurseCursedSmall}} {{ColorYellow}}다른 저주가 추가로 발동할 수 있습니다.{{CR}}"}, -- ???
	-- Change: affects whole floor
	[42] = {"41", "완전 지루해...", "{{Slow}} {{ColorCyan}}그 스테이지{{CR}}에서 적과 캐릭터의 속도가 느려집니다."}, -- I'm Drowsy...
	-- Change: affects whole floor
	[43] = {"42", "완전 재밌어!!", "!!! {{ColorYellow}}그 스테이지{{CR}}에서 적과 캐릭터의 속도가 빨라집니다.#!!! 30, 60초 이후 다시 발동"}, --I'm Excited!!
	-- Change: Forces the effect to be a golden trinket
	[44] = {"43", "꿀꺽!", "소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다.#{{ColorCyan}}흡수된 장신구는 {{ColorGold}}황금{{ColorCyan}} 형태로 흡수됩니다."}, -- Gulp!
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Car Battery ----------

local carBattery = {
	-- Now grants +4 damage instead of +3
	[34] = {2, 4}, -- The Book of Belial
	-- Added info regarding doubled attack
	[47] = "미사일 +1", -- Doctor's Remote
	-- Added info regarding doubled attack
	[164] = "2개의 불꽃을 서로 다른 거리로 발사합니다.", -- The Candle
	-- Added info regarding doubled attack
	[289] = "2개의 불꽃을 서로 다른 거리로 발사합니다.", -- Red Candle
	-- Now 23 seconds, if you have car battery
	[441] = {15, 23}, -- Mega Blast
	--
	[523] = {"3초간", "6초간", "3초가", "6초가"}, -- Telekinesis
	-- Added info regarding doubled familiar
	[728] = "등장하는 태아 +1", -- Gello
}
EID:updateDescriptionsViaTable(carBattery, EID.descriptions[languageCode].carBattery)


---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "고정 체력이 아닌 하트는 부족한 충전량 한칸 당 체력 {{BlinkYellowRed}}1칸{{CR}}을 깎습니다.", -- Sharp Plug + Tainted Magdalene
	-- Added ball of bandages synergy
	["Potato Peeler + Ball of Bandages"] = {"{{ArrowGrayRight}} {{Collectible73}} A Cube of Meat","{{ArrowGrayRight}} {{Collectible207}} Ball of Bandages"}, -- Potato Peeler with Ball of Bandages
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "서로 다른 효과를 가진 심연의 파리 x16 소환", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

---------- Transformations ----------
EID.descriptions[languageCode].transformations[17] = "Necromancer" -- Add Necromancer transformation

-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
