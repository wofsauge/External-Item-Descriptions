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
	-- Change: Complete rewrite
	[436] = {"436", "우유!", "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#{{TearsSmall}} 10회 방어 시 사라지며 그 스테이지에서 연사(+상한) +1#스테이지 진입 시 복원됩니다."}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "납작한 콩", "4초동안 공격을 멈추지 않고 공격을 유지할 시 그 방에서 10초동안 유지되는 갈색 구름이 생성되며;#{{ArrowGrayRight}} 구름은 점점 커지며 닿은 적은 크기에 반비례하여 최대 공격력 x5의 피해를 줍니다.#구름은 공격으로 밀 수 있습니다."}, -- Linger Bean
	[461] = {"461", "기생자", "15%의 확률로 알주머니 공격이 나갑니다.#알주머니 명중 시 파란 아군 거미 또는 파리를 소환합니다.#{{LuckSmall}} 행운 5 이상일 때 50% 확률"}, -- Parasitoid
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "허쉬", "대각선으로 이동하며 접촉하는 적에게 초당 30의 피해를 줍니다.#공격키를 누르고 있으면 움직이지 않는 대신 적의 탄환을 막으며;#{{ArrowGrayRight}} 8방향으로 공격력 6의 눈물을 발사합니다."}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "데이터마이너", "{{ArrowUpDown}} 사용 시 능력치가 랜덤으로 증가하거나 감소, 그 방에서 랜덤 효과가 부여되며;#{{ArrowGrayRight}} {{Collectible721}}그 방의 아이템을 오류 아이템으로 바꿉니다.#!!! 그 방의 스프라이트가 망가집니다."}, -- Dataminer
	-- Change:
	[482] = {"482", "클리커", "사용 시 가장 최근에 획득한 패시브 아이템을 50%의 확률로 제거하고;#{{ArrowGrayRight}} 캐릭터를 다른 랜덤 캐릭터로 바꿉니다."}, -- Clicker
	-- Change: Complete rewrite
	[510] = {"510", "정신착란", "{{Friendly}} {{DeliriumSmall}} 사용 시 Delirium 버전의 아군 보스를 소환합니다.#소환된 보스는 방을 나가도 유지되나 체력이 서서히 감소합니다.#재사용 시 이전에 소환한 보스는 사라집니다."}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "너무 아파", "피격 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사하며;#{{ArrowGrayRight}} 그 방에서 {{TearsSmall}}연사(+상한) +1.2#{{Blank}} (2회 피격 시부터 {{TearsSmall}}+0.4)#그 방에서 공격이 무언가에 부딪힐 때 빨간 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다."}, -- It Hurts
	[593] = {"593", "화성", "이동키를 두번 누르면 누른 방향으로 돌진하여 접촉한 적에게 공격력 x4 +8의 피해를 줍니다.#{{ArrowGrayRight}} {{Burning}} 돌진 중 적 및 장애물에 부딪힐 시 주변의 적에게 10의 화염 피해를 줍니다.#{{TimerSmall}} (쿨타임 3초/{{Collectible130}}{{Collectible181}}1초)"}, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "목성", "↑ {{Heart}}최대 체력 +2#↓ {{SpeedSmall}}이동속도 -0.3#{{Poison}} 이동하지 않으면 이동속도가 0.5 증가하며, 증가한 상태에서 이동 시 공격력 x0.5의 독가스를 발사하고 이동속도가 다시 감소합니다.#캐릭터가 독구름에 면역이 됩니다."}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "사악한 부적", "↑ {{LuckSmall}}행운 +2#!!! 캐릭터가 이하 효과에 면역:#{{Burning}} 모닥불 및 화염 피해#{{Confusion}} 혼란#{{Fear}} 공포#{{Slow}} 거미줄#{{Poison}} 독구름#{{ArrowGrayRight}} 적의 장판에 닿아도 1초 이내에 벗어나면 피해를 받지 않습니다."}, -- Evil Charm
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
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "진드기", "!!! {{Trinket41}}/{{Trinket135}}/{{Collectible479}}를 제외한 {{ColorOrange}}교체 및 버리기 불가{{CR}}#방 입장 시 체력이 60 이상인 적의 체력을 15% 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 한칸 회복합니다."}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "편도선", "6~12 피격 시 Tonsil을 획득합니다.#Tonsil은 캐릭터를 따라다니며 적의 탄환을 막아줍니다."}, -- Tonsil
	[104] = {"104", "창사골", "!!! 일회용#피격 시 5% 확률로 그 방의 아이템을 하나 생성합니다."}, -- Wish Bone
	[105] = {"105", "점심 도시락", "!!! 일회용#피격 시 5% 확률로 {{Collectible22}}Lunch ({{Heart}}최대 체력 +1) 아이템을 생성합니다."}, -- Bag Lunch
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "짧은 도화선", "!!! 폭탄이 터지는 속도가 빨라집니다.#{{Bomb}} 폭탄 피해량 +15%"}, -- Short Fuse
	-- exclusive to ko_kr
	[135] = {"135", "라이터", "{{Burning}} 방 입장 시 20%의 확률로 그 방의 적에게 2초간 화상을 입힙니다.#{{LuckSmall}} 행운 40 이상일 때 100% 확률#{{Trinket53}} 흡수하지 않은 Tick 장신구를 제거할 수 있습니다."}, -- A Lighter
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"방 입장 시 체력이 60 이상인 적의 체력을 {{ColorGold}}30%{{CR}} 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 {{ColorGold}}두칸{{CR}} 회복합니다.",
		"!!! {{Trinket41}}/{{Trinket135}}/{{Collectible479}}를 제외한 {{ColorOrange}}교체 및 버리기 불가{{CR}}#방 입장 시 체력이 60 이상인 적의 체력을 {{ColorGold}}30%{{CR}} 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 {{ColorGold}}두칸{{CR}} 회복합니다.",
		"방 입장 시 체력이 60 이상인 적의 체력을 {{ColorGold}}30%{{CR}} 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 {{ColorGold}}세칸{{CR}} 회복합니다.",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

---------- Cards ----------
local cards={
	[11] = {"11", "X - 운명의 수레바퀴", "{{Slotmachine}} 도박기계를 소환합니다.#{{ArrowGrayRight}} {{FortuneTeller}} 24%의 확률로 운세기계가 대신 등장#{{ArrowGrayRight}} {{CraneGame}} 1%의 확률로 크레인게임이 대신 등장"}, -- X - Wheel of Fortune
	[38] = {"38", "벨카노", "{{Collectible706}} 그 방에서 심연의 파리 3마리를 소환합니다."}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs={
	[11] = {"{{Slotmachine}} 도박기계를 {{ColorShinyPurple}}2개{{CR}} 소환합니다.#{{ArrowGrayRight}} {{FortuneTeller}} 각각 24%의 확률로 운세기계가 대신 등장#{{ArrowGrayRight}} {{CraneGame}} 각각 1%의 확률로 크레인게임이 대신 등장"}, -- Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------
local horsepills={
	[26] = {"25", "건망증", "{{CurseLostSmall}} Lost 저주에 걸리며 맵을 볼 수 없습니다.#{{ColorYellow}}알약의 효과가 다시 가려집니다."}, -- Amnesia
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "고정 체력이 아닌 하트는 부족한 충전량 한칸 당 체력 {{BlinkYellowRed}}1칸{{CR}}을 깎습니다.", -- Sharp Plug + Tainted Magdalene
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "서로 다른 효과를 가진 심연의 파리 x16 소환", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
