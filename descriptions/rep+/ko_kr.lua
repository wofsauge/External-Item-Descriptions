---------------------------------------
-----  Basic Korean descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "ko_kr"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "레몬빛 실수", "사용 시 캐릭터의 주위에 노란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 주며 방을 나가기 전까지 유지됩니다."}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "죽은 새", "피격 시 적을 따라다니며 접촉한 적에게 초당 4.3의 피해를 줍니다.#{{HalfHeart}} 빨간하트가 반칸 이하일 때 항상 발동"}, -- Dead Bird
	-- Change: Complete rewrite
	[351] = {"351", "대빵 큰 콩", "사용 시 그 방의 모든 장애물을 파괴하고 적에게 100의 폭발 + 석화 피해를 주며;#{{Poison}} 캐릭터 주변의 적에 초당 5의 추가 독성 피해를 줍니다.#{{BossRoom}} 보스방에서 사용 시 D2(6스테이지)의 경우 보스러시가, W2(8스테이지)의 경우 Blue Womb으로 향하는 문이 열립니다."}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "우유!", "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#{{TearsSmall}} 10회 방어 시 사라지며 그 스테이지에서 연사(+상한) +1#스테이지 진입 시 복원됩니다."}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "납작한 콩", "4초동안 공격을 멈추지 않고 공격을 유지할 시 그 방에서 10초동안 유지되는 갈색 구름이 생성되며;#구름은 점점 커지며 닿은 적은 크기에 반비례하여 최대 공격력 x5의 피해를 줍니다.#구름은 공격으로 밀 수 있습니다."}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "허쉬", "대각선으로 이동하며 접촉하는 적에게 초당 30의 피해를 줍니다.#공격키를 누르고 있으면 움직이지 않는 대신;#{{Blank}} 적의 탄환을 막으며;#{{Blank}} 8방향으로 공격력 6의 눈물을 발사합니다."}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "데이터마이너", "{{ArrowUpDown}} 사용 시 능력치가 랜덤으로 증가하거나 감소, 그 방에서 랜덤 효과가 부여되며;#{{Collectible721}} 그 방의 아이템을 오류 아이템으로 바꿉니다.#!!! 그 방의 스프라이트가 망가집니다."}, -- Dataminer
	-- Change: Complete rewrite
	[510] = {"510", "정신착란", "{{DeliriumSmall}} 사용 시 Delirium 버전의 아군 보스를 소환합니다.#소환된 보스는 방을 나가도 유지되나 재사용 시 이전에 소환한 보스는 사라집니다.#소환된 보스에 따라서 충전량이 달라집니다."}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "너무 아파", "피격 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사하며 그 방에서 {{TearsSmall}}연사(+상한)가 +1.2씩 증가합니다.#{{Blank}} (2회 피격 시부터 {{TearsSmall}}+0.4)#그 방에서 공격이 무언가에 부딪힐 때 빨간 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다."}, -- It Hurts
	[593] = {"593", "화성", "이동키를 두번 누르면 누른 방향으로 돌진하여 접촉한 적에게 공격력 x4 +8의 피해를 줍니다.#돌진 중 적 및 장애물에 부딪힐 시 작은 원형 지진파를 발생시킵니다.#{{TimerSmall}} (쿨타임 3초/{{Collectible130}}{{Collectible181}}1초)"}, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "목성", "↑ {{Heart}}최대 체력 +2#↓ {{SpeedSmall}}이동속도 -0.3#이동하지 않으면 이동속도가 0.5 증가하며, 증가한 상태에서 이동 시 공격력 x0.5의 {{Poison}}독가스를 발사하고 이동속도가 다시 감소합니다.#캐릭터가 독구름에 면역이 됩니다."}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "사악한 부적", "↑ {{LuckSmall}}행운 +2#!!! 캐릭터가 이하 효과에 면역:#{{Burning}} 모닥불 및 화염 피해#{{Confusion}} 혼란#{{Fear}} 공포#{{Slow}} 거미줄#{{Poison}} 독구름#적의 장판에 닿아도 1초 이내에 벗어나면 피해를 받지 않습니다."}, -- Evil Charm
	-- Change: added shop portals
	[660] = {"660", "카드점", "스테이지 첫 방에 색상에 따라 특정한 장소로 이동할 수 있는 포탈이 생성됩니다.#방을 나가면 포탈이 사라집니다.#{{ColorRed}}빨강: {{CR}}{{BossRoom}}보스방#{{Blank}} {{ColorBlue}}파랑: {{CR}}{{SecretRoom}}비밀방#{{Blank}} {{ColorYellow}}노랑: {{CR}}{{TreasureRoom}}보물방#{{Blank}} {{ColorGreen}}초록: {{CR}}{{Shop}}상점"}, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "꼬마 포탈", "{{Throwable}} 공격키를 2번 연속 누르면 공격 방향으로 날아가며;#접촉한 적에게 피해를 주고 픽업에 접촉 시 픽업을 파란 아군 파리로 바꿉니다.#여러 개의 픽업을 바꿀 시 차원의 방으로 이동하는 포탈을 생성합니다.#차원의 방은 현재 게임 내내, 스테이지 이동 시에도 유지됩니다.#스테이지 진입 시 포탈이 다시 복원됩니다."}, -- Lil Portal
	-- Change: tem quality now impacts the damage of the summoned locust. Locusts now inherit many different effects based on the item destroyed by Abyss.
	[706] = {"706", "무저갱", "사용 시 그 방의 아이템을 흡수하며 흡수한 아이템의 수만큼 특수한 아군 파리를 소환합니다.#흡수한 아이템에 따라 소환되는 아군 파리의 능력이 달라집니다.#소환된 아군 파리는 공격방향으로 돌진하며 접촉한 적에게 흡수한 아이템의 등급에 따라 피해를 줍니다.#!!! {{NoLB}}{{Quality0}}:0.5x/{{Quality1}}:0.75x/{{Quality2}}:1.0x/{{Quality3}}:1.5x/{{Quality4}}:2.0x"}, -- Abyss

}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "진드기", "!!! {{Trinket41}}/{{Trinket135}}/{{Collectible479}}를 제외한 {{ColorOrange}}교체 및 버리기 불가{{CR}}#방 입장 시 체력이 60 이상인 적의 체력을 15% 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 한칸 회복합니다."}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "편도선", "6~12 피격 시 {{Collectible474}}Tonsil을 획득합니다.#Tonsil은 캐릭터를 따라다니며 적의 탄환을 막아줍니다."}, -- Tonsil
	[104] = {"104", "창사골", "!!! 일회용#피격 시 5% 확률로 그 방의 아이템을 하나 생성합니다."}, -- Wish Bone
	[105] = {"105", "점심 도시락", "!!! 일회용#피격 시 5% 확률로 {{Collectible22}}Lunch ({{Heart}}최대 체력 +1) 아이템을 생성합니다."}, -- Bag Lunch
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "짧은 도화선", "!!! 폭탄이 터지는 속도가 빨라집니다.#{{Bomb}} 폭탄 피해량 +15%"}, -- Short Fuse
	-- exclusive to ko_kr
	[135] = {"135", "라이터", "{{Burning}} 방 입장 시 20%의 확률로 그 방의 적에게 2초간 화상을 입힙니다.#{{LuckSmall}} 행운 40 이상일 때 100% 확률#{{Trinket53}} 흡수하지 않은 Tick 장신구를 제거할 수 있습니다."}, -- A Lighter
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)


---------- Cards ----------
local cards={
	[38] = {"38", "벨카노", "{{Collectible706}} 그 방에서 심연의 파리 3마리를 소환합니다."}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local wisps = {
	-- TODO check damage and hp
	[441] = "{{MiddleWisp}} {{ColorYellow}}중앙 x1{{CR}}/{{Heart}}:2#{{Chargeable}}충전형 혈사포를 발사합니다. ({{DamageSmall}}:3)#{{Collectible441}}아이템 발동 중 혈사포를 같이 발사합니다.", -- Mega Blast
}
EID:updateDescriptionsViaTable(wisps, EID.descriptions[languageCode].bookOfVirtuesWisps)

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
