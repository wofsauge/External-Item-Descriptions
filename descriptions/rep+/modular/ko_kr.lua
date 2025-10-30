---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 56] = "사용 시 캐릭터의 주위에 노란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 주며 방을 나가기 전까지 유지됩니다.", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room"

	[C_ID .. 117] = "피격 시 적을 따라다니며 접촉한 적에게 초당 4.3의 피해를 줍니다.", -- Dead Bird
	-- Full old Desc: "피격 시 적을 따라다니며 접촉한 적에게 초당 4.3의 피해를 줍니다.#{{HalfHeart}} 빨간하트가 반칸 이하일 때 항상 발동"
	-- English: "Taking damage spawns a bird that attacks enemies#Persists between rooms if player is at 1/2 hearts"

	[C_ID .. 141] = "랜덤 페니류 장신구를 하나 드랍합니다.", -- Pageant Boy
	-- Full old Desc: "{{Coin}} 동전 7개를 드랍합니다.#랜덤 페니류 장신구를 하나 드랍합니다."
	-- English: "Spawns a random penny trinket"

	[C_ID .. 351] = "{{Petrify}} 사용 시 그 방의 장애물을 파괴하고 적에게 100의 폭발 + 석화 피해를 주며;#{{ArrowGrayRight}} {{Poison}}캐릭터 주변의 적에 초당 5의 추가 독성 피해를 줍니다.#{{BossRoom}} 보스방에서 사용 시 D2(6스테이지)의 경우 보스러시가, W2(8스테이지)의 경우 Blue Womb으로 향하는 문이 열립니다.", -- Mega Bean
	-- English: "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks"

	[C_ID .. 420] = "{{Bomb}} 폭탄 피해량 +85#{{Bomb}} 폭탄의 범위가 넓어집니다.#모닥불을 끄면 폭발합니다. (캐릭터 피해 없음)#캐릭터가 지나간 곳에 검은 가루가 남으며;#{{ArrowGrayRight}} 가루로 원을 그리면 마법진이 생성됩니다.#마법진 위의 적에게 4초간 최대 130의 피해를 줍니다.", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished"

	[C_ID .. 436] = "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#{{TearsSmall}} 10회 방어 시 사라지며 그 스테이지에서 연사(+상한) +1#스테이지 진입 시 복원됩니다.", -- Milk!
	-- English: "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor"

	[C_ID .. 447] = "4초동안 공격을 멈추지 않고 공격을 유지할 시 그 방에서 10초동안 유지되는 갈색 구름이 생성되며;#{{ArrowGrayRight}} 구름은 점점 커지며 닿은 적은 크기에 반비례하여 최대 공격력 x5의 피해를 줍니다.#구름은 공격으로 밀 수 있습니다.", -- Linger Bean
	-- English: "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it"

	[C_ID .. 470] = "대각선으로 이동하며 접촉하는 적에게 초당 30의 피해를 줍니다.#{{ArrowGrayRight}} 8방향으로 공격력 6의 눈물을 발사합니다.", -- Hushy
	-- Full old Desc: "대각선으로 이동하며 접촉하는 적에게 초당 30의 피해를 줍니다.#공격키를 누르고 있으면 움직이지 않는 대신 적의 탄환을 막으며;#{{ArrowGrayRight}} 8방향으로 공격력 6의 눈물을 발사합니다."
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears"

	[C_ID .. 475] = "{{ArrowGrayRight}} {{ColorGray}}(특정 보스 {{DeliriumSmall}}/{{MotherSmall}} 의 경우 13~15초 후 사망)", -- Plan C
	-- Full old Desc: "사용 시 그 방의 적에게 9,999,999의 피해를 주며 {{ColorRed}}3초 후 사망합니다{{CR}}.#{{ArrowGrayRight}} {{ColorGray}}(특정 보스 {{DeliriumSmall}}/{{MotherSmall}} 의 경우 13~15초 후 사망)"
	-- English: "{{Warning}} Kills Isaac 3 seconds later#10 to 12 seconds for Delirium and Mother"

	[C_ID .. 482] = "사용 시 가장 최근에 획득한 패시브 아이템을 50%의 확률로 제거하고;#{{ArrowGrayRight}} 캐릭터를 다른 랜덤 캐릭터로 바꿉니다.", -- Clicker
	-- English: "Changes your character to a random character#50% chance of removing the most recent item collected"

	[C_ID .. 510] = "{{Friendly}} {{DeliriumSmall}} 사용 시 Delirium 버전의 아군 보스를 소환합니다.#소환된 보스는 방을 나가도 유지되나 체력이 서서히 감소합니다.#재사용 시 이전에 소환한 보스는 사라집니다.", -- Delirious
	-- English: "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time"

	[C_ID .. 560] = "피격 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사하며;#{{ArrowGrayRight}} 그 방에서 {{TearsSmall}}연사(+상한) +1.2#{{Blank}} (2회 피격 시부터 {{TearsSmall}}+0.4)#그 방에서 공격이 무언가에 부딪힐 때 빨간 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다.", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact"

	[C_ID .. 593] = "이동키를 두번 누르면 누른 방향으로 돌진하여 접촉한 적에게 공격력 x4 +8의 피해를 줍니다.#{{ArrowGrayRight}} {{Burning}} 돌진 중 적 및 장애물에 부딪힐 시 주변의 적에게 10의 화염 피해를 줍니다.#{{TimerSmall}} (쿨타임 3초/{{Collectible130}}{{Collectible181}}1초)", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact"

	[C_ID .. 632] = "!!! 캐릭터가 이하 효과에 면역:#{{Burning}} 모닥불 및 화염 피해", -- Evil Charm
	-- Full old Desc: "↑ {{LuckSmall}}행운 +2#!!! 캐릭터가 이하 효과에 면역:#{{Burning}} 모닥불 및 화염 피해#{{Confusion}} 혼란#{{Fear}} 공포#{{Slow}} 거미줄#{{Poison}} 독구름#{{ArrowGrayRight}} 적의 장판에 닿아도 1초 이내에 벗어나면 피해를 받지 않습니다."
	-- English: "Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep"

	[C_ID .. 660] = "스테이지 첫 방에 색상에 따라 특정한 장소로 이동할 수 있는 포탈이 생성됩니다.#{{ArrowGrayRight}} {{ColorRed}}빨강: {{CR}}{{BossRoom}}보스방#{{Blank}} {{ColorBlue}}파랑: {{CR}}{{SecretRoom}}비밀방#{{Blank}} {{ColorYellow}}노랑: {{CR}}{{TreasureRoom}}보물방#{{Blank}} {{ColorGreen}}초록: {{CR}}{{Shop}}상점#방을 나가면 포탈이 사라집니다.", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop"

	[C_ID .. 681] = "{{Throwable}} 공격키를 2번 연속 누르면 공격 방향으로 날아가며;#{{ArrowGrayRight}} 접촉한 적에게 피해를 주고 픽업에 접촉 시 픽업을 파란 아군 파리로 바꿉니다.#여러 개의 픽업을 바꿀 시 차원의 방으로 이동하는 포탈을 생성합니다.#차원의 방은 현재 게임 내내, 스테이지 이동 시에도 유지됩니다.#스테이지 진입 시 포탈이 다시 복원됩니다.", -- Lil Portal
	-- English: "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run"

	[C_ID .. 685] = "{{Collectible584}} 사용 시 위습을 소환합니다.#사용할 때마다 소환하는 위습의 개수가 증가합니다.#높은 확률로 특별한 위습이 소환됩니다.", -- Jar of Wisps
	-- English: "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 706] = "사용 시 그 방의 아이템을 심연의 파리로 바꿉니다.#원본 아이템에 따라 심연의 파리의 능력이 달라집니다.#심연의 파리는 공격방향으로 돌진하며 접촉한 적에게 원본 아이템의 등급에 따라 피해를 줍니다.#!!! {{NoLB}}{{Quality0}}:0.5x/{{Quality1}}:0.75x/{{Quality2}}:1.0x/{{Quality3}}:1.5x/{{Quality4}}:2.0x", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 5] = "!!! 적이 챔피언의 형태로 나올 확률이 2배로 증가합니다.#가능한 경우, 보스가 챔피언의 형태로 나올 확률이 증가합니다.#챔피언 몬스터 처치 시 보상 드랍 확률 +50%#챔피언 몬스터 보상이 2배로 등장합니다.", -- Purple Heart
	-- English: "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot"

	[T_ID .. 16] = "클리어하지 않은 방에서 장신구를 버리면;#{{ArrowGrayRight}} {{MomBossSmall}} 그 위치에 엄마발이 떨어집니다.", -- Mom's Toenail
	-- English: "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location"

	[T_ID .. 23] = "!!! 일회용#{{Player10}} {{ColorYellow}}(해금 필요){{CR}} 사망 시 The Lost로 부활합니다.#{{SuperSecretRoom}} 스테이지 진입 시 33%의 확률로 일급비밀방의 위치를 보여줍니다.", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"

	[T_ID .. 53] = "!!! {{Trinket41}}/{{Trinket135}}/{{Collectible479}}를 제외한 {{ColorOrange}}교체 및 버리기 불가{{CR}}#방 입장 시 체력이 60 이상인 적의 체력을 15% 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 한칸 회복합니다.", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping"

	[T_ID .. 70] = "클리어하지 않은 방에서 30초마다 파란 아군 거미를 하나 소환합니다.#방 클리어 시 파란 아군 거미를 하나 소환합니다.", -- Louse
	-- English: "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear"

	[T_ID .. 76] = "{{Chest}} 상자에서 50% 확률로 픽업이 추가로 드랍되거나 Attack Fly가 나옵니다.#상자에서 아이템이 나올 때 {{Quality3}}등급 + 랜덤 배열의 아이템이 나옵니다.#슬롯머신의 성공 확률 및 보상 빈도가 증가합니다.", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"

	[T_ID .. 85] = "{{DonationJam}} 기부기계 고장 확률 감소#!!! {{DonationMachine}}기부기계/{{BloodDonationMachine}}{{Confessional}}헌혈기/{{Beggar}}거지/{{RestockMachine}}재입고에 기부 시 33%의 확률로 아래 효과 중 하나 발동:#{{ArrowGrayRight}} {{NoLB}}{{Coin}} 동전 +1 ({{DonationMachine}}/{{Beggar}})#{{Blank}} {{NoLB}}{{Heart}} 빨간하트 1칸 회복 ({{DonationMachine}}/{{Beggar}}/{{BloodDonationMachine}}{{Confessional}})#{{Blank}} {{NoLB}}{{LuckSmall}} 행운 +1 ({{DonationMachine}}/{{Beggar}}/{{BloodDonationMachine}}{{Confessional}}/{{RestockMachine}})#{{Blank}} {{NoLB}}{{Beggar}} 거지 소환 ({{DonationMachine}}/{{BloodDonationMachine}}{{Confessional}})", -- Karma
	-- English: "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines"

	[T_ID .. 89] = "{{DamageSmall}} 패밀리어 피해량 +25%#패밀리어들 사이의 간격이 가까워집니다.", -- Child Leash
	-- English: "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage"

	[T_ID .. 93] = "방 입장 시 33%의 확률로 파리류 적들이 공격하지 않거나 약해집니다.#방 클리어 시 파란 아군 파리를 하나 소환합니다.", -- Used Diaper
	-- English: "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"

	[T_ID .. 103] = "!!! 소지중인 동전, 폭탄, 열쇠의 개수가 모두 같을 때:#{{ArrowGrayRight}} {{TearsSmall}} 연사(+상한) +2#{{ArrowGrayRight}} {{Heart}}하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 픽업이 1+1로 나옵니다.", -- Equality!
	-- English: "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"

	[T_ID .. 133] = "!!! 폭탄이 터지는 속도가 빨라집니다.#{{Bomb}} 폭탄 피해량 +15%", -- Short Fuse
	-- English: "Isaac's bombs explode faster#Bombs deal 15% more damage"

	[T_ID .. 135] = "{{Burning}} 방 입장 시 20%의 확률로 그 방의 적에게 2초간 화상을 입힙니다.#{{LuckSmall}} 행운 40 이상일 때 100% 확률#{{Trinket53}} 흡수하지 않은 Tick 장신구를 제거할 수 있습니다.", -- A Lighter
	-- English: "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 172] = "동전 획득 시 랜덤 방으로 순간이동합니다.#동전 종류에 따라 이동하는 방의 종류가 달라질 수 있음", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 11] = "{{Slotmachine}} 도박기계를 소환합니다.#{{ArrowGrayRight}} {{FortuneTeller}} 24%의 확률로 운세기계가 대신 등장#{{ArrowGrayRight}} {{CraneGame}} 1%의 확률로 크레인게임이 대신 등장", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game"

	[Card_ID .. 32] = "그 방의 장애물을 제거합니다.#그 방의 돌 타입 적을 제거합니다.", -- Hagalaz
	-- English: "Destroy all rocks and stone enemies in the room"

	[Card_ID .. 38] = "{{Collectible706}} 그 방에서 심연의 파리 3마리를 소환합니다.", -- Berkano
	-- English: "{{Collectible706}} Summons 3 Abyss locusts for the room"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local Pill_ID = "5.70."
local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 20)] = "스테이지 안의 {{ColorCyan}}랜덤 특수방{{CR}}으로 순간이동합니다.", -- Telepills
	-- English: "Teleports Isaac to a special room"

	[Pill_ID .. (HorseID + 26)] = "{{CurseLostSmall}} Lost 저주에 걸리며 맵을 볼 수 없습니다.#{{ColorYellow}}알약의 효과가 다시 가려집니다.", -- Amnesia
	-- English: "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMazeSmall}} Maze 저주에 걸리며 방 이동 시 스테이지 안의 다른 방으로 순간이동하거나 두개의 랜덤 방의 위치가 서로 바뀝니다.#{{CurseCursedSmall}} {{ColorYellow}}다른 저주가 추가로 발동할 수 있습니다.{{CR}}", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} {{ColorCyan}}그 스테이지{{CR}}에서 적과 캐릭터의 속도가 느려집니다.", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 43)] = "!!! {{ColorYellow}}그 스테이지{{CR}}에서 적과 캐릭터의 속도가 빨라집니다.", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 44)] = "소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다.#{{ColorCyan}}흡수된 장신구는 {{ColorGold}}황금{{ColorCyan}} 형태로 흡수됩니다.", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
