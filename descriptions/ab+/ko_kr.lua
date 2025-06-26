---------------------------------------
-----  Basic Korean descriptions  -----
---------------------------------------

-- Last Sync with English or update: 2024-11-18

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

-- 스탯 순서: 체력 - 빨간하트 - 블랙하트 - 소울하트 - 공격력 - 연사 - 사거리 - 이동속도 - 탄속 - 행운 - 효과

local languageCode = "ko_kr"

-- init Korean table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "Korean"
EID.descriptions[languageCode].alternativeLanguageCodes = {"koreana", "kr", "ko"}

-- Fonts to be used with this languagepack
--[[
	Description for Korean fonts :
	korean_yoonwebdotum10(윤디자인웹돋움) - Default Korean font that was used from former EID Korean. Shadow/Borderless/Inverted version available. Recommended LineHeight : 13
	korean_yoonwebdotum9(윤디자인웹돋움) - Small size of default Korean font that was used from former EID Korean. Recommended LineHeight : 11
	korean_lanapixel(Lanapixel) - Used for official translation for TBoI : Repentance. Recommended LineHeight : 11
	korean_soyakkoma(소야꼬마9) - A fancy font that improves readability. Shadow/Borderless/Inverted version available. Recommended LineHeight : 13
	korean_soyanon(소야논8) - A fancy font that that was used from former EID Korean. Shadow version available. Recommended LineHeight : 11
	korean_galmoori9(갈무리9) - A font that inspired from Nintendo DS Korean font. Recommended LineHeight : 11
	korean_galmoori11(갈무리11) - A font that inspired from Nintendo DS Korean font. Used for unofficial Korean mod by Blackcreamtea. Recommended LineHeight : 13
	korean_baekmukgulim10(백묵굴림10) A font that improves readability. Recommended LineHeight : 12
	korean_hatmuri9(햇무리9) - A font that improves readability. Recommended LineHeight : 12
	korean_dotum(돋움) - A font that was used from former EID Korean. Recommended LineHeight : 13
	korean_gulim(굴림) - A font that was used from former EID Korean. Recommended LineHeight : 13

	korean_yoonwebdotum10, korean_galmoori9, korean_galmoori11 is added for community request.
	eid_korean_hcrdotum_0.png is untouched due to game crashes for changing file names.
 ]]
EID.descriptions[languageCode].fonts = {
	{name="korean_yoonwebdotum10_shadow", lineHeight=13, textboxWidth = 175},
	{name="korean_yoonwebdotum10", lineHeight=13, textboxWidth = 175},
	{name="korean_yoonwebdotum10_borderless", lineHeight=13, textboxWidth = 175},
	{name="korean_yoonwebdotum10_inverted", lineHeight=13, textboxWidth = 175},
	{name="korean_yoonwebdotum9", lineHeight=11, textboxWidth = 150},
	{name="korean_lanapixel", lineHeight=12, textboxWidth = 150},
	{name="korean_soyakkoma", lineHeight=13, textboxWidth = 150},
	{name="korean_soyakkoma_shadow", lineHeight=13, textboxWidth = 150},
	{name="korean_soyakkoma_borderless", lineHeight=13, textboxWidth = 150},
	{name="korean_soyakkoma_inverted", lineHeight=13, textboxWidth = 150},
	{name="korean_soyanon", lineHeight=12, textboxWidth = 150},
	{name="korean_soyanon_shadow", lineHeight=12, textboxWidth = 150},
	{name="korean_galmoori9", lineHeight=12, textboxWidth = 150},
	{name="korean_galmoori11", lineHeight=14, textboxWidth = 160},
	{name="korean_baekmukgulim10", lineHeight=12, textboxWidth = 150},
	{name="korean_hatmuri9", lineHeight=12, textboxWidth = 150},
	{name="korean_dotum", lineHeight=13, textboxWidth = 160},
	{name="korean_gulim", lineHeight=13, textboxWidth = 160}
}

---------- Collectibles ----------
EID.descriptions[languageCode].collectibles={
	{"1", "슬픈 양파", "↑ {{TearsSmall}}연사 +0.7"}, -- The Sad Onion
	{"2", "내면의 눈", "↓ {{TearsSmall}}공격 딜레이 x2.1 +3#공격이 3발로 나갑니다."}, -- The Inner Eye
	{"3", "초능력자", "공격에 유도 효과가 생깁니다."}, -- Spoon Bender
	{"4", "크리켓의 머리", "↑ {{DamageSmall}}공격력 +0.5#↑ {{DamageSmall}}공격력 배율 x1.5"}, -- Cricket's Head
	{"5", "나의 모습", "↑ {{RangeSmall}}사거리 +1.5#↑ 눈물 높이 +1#↑ {{ShotspeedSmall}}탄속 +0.6#공격이 캐릭터가 있는 방향으로 되돌아옵니다."}, -- My Reflection
	{"6", "오줌싸개", "↑ {{TearsSmall}}연사 +1.5#↓ {{RangeSmall}}사거리 -17.62#↑ 눈물 높이 +0.76"}, -- Number One
	{"7", "순교자의 피", "↑ {{DamageSmall}}공격력 +1"}, -- Blood of the Martyr
	{"8", "보비", "공격방향으로 공격력 3.5의 눈물을 발사합니다."}, -- Brother Bobby
	{"9", "스카톨", "파리류 적들이 공격하지 않거나 약해집니다."}, -- Skatole
	{"10", "파리떼", "캐릭터 주변을 돌며 적의 탄환을 막아주는 2마리의 파리 배리어를 얻습니다."}, -- Halo of Flies
	{"11", "", "↑ 목숨 +1#사망 시 전 방에서 체력이 꽉 찬 상태로 부활합니다."}, -- 1up!
	{"12", "마법의 버섯", "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 체력을 모두 회복합니다.#↑ {{DamageSmall}}공격력 +0.5#↑ {{DamageSmall}}공격력 배율 x1.5#↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5#↑ {{SpeedSmall}}이동속도 +0.3#캐릭터의 크기가 커집니다."}, -- Magic Mushroom
	{"13", "바이러스", "↓ {{SpeedSmall}}이동속도 -0.1#{{Poison}} 적에게 접촉시 적에게 12의 피해를 주고 적을 중독시킵니다.#중독된 적 처치 시 20% 확률로 {{BlackHeart}}블랙하트를 드랍합니다."}, -- The Virus
	{"14", "불량 스테로이드", "↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5#↑ {{SpeedSmall}}이동속도 +0.6"}, -- Roid Rage
	{"15", "♡", "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 체력을 모두 회복합니다."}, -- <3
	{"16", "생간", "↑ {{Heart}}최대 체력 +2#{{HealingRed}} 체력을 모두 회복합니다."}, -- Raw Liver
	{"17", "해골 열쇠", "↑ {{Key}}열쇠 +99"}, -- Skeleton Key
	{"18", "달러", "↑ {{Coin}}동전 +99"}, -- A Dollar
	{"19", "꽈광!", "↑ {{Bomb}}폭탄 +10"}, -- Boom!
	{"20", "초월", "비행 능력을 얻습니다."}, -- Transcendence
	{"21", "나침반", "맵에 특수방의 위치를 표시합니다.#!!! 스테이지 구조 및 비밀방은 표시되지 않습니다."}, -- The Compass
	{"22", "점심밥", "↑ {{Heart}}최대 체력 +1"}, -- Lunch
	{"23", "저녁밥", "↑ {{Heart}}최대 체력 +1"}, -- Dinner
	{"24", "간식", "↑ {{Heart}}최대 체력 +1"}, -- Dessert
	{"25", "아침밥", "↑ {{Heart}}최대 체력 +1"}, -- Breakfast
	{"26", "썩은 고기", "↑ {{Heart}}최대 체력 +1"}, -- Rotten Meat
	{"27", "나무 숟가락", "↑ {{SpeedSmall}}이동속도 +0.3"}, -- Wooden Spoon
	{"28", "벨트", "↑ {{SpeedSmall}}이동속도 +0.3"}, -- The Belt
	{"29", "엄마의 속옷", "↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5"}, -- Mom's Underwear
	{"30", "엄마의 하이힐", "↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5"}, -- Mom's Heels
	{"31", "엄마의 립스틱", "↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5"}, -- Mom's Lipstick
	{"32", "철제 옷걸이", "↑ {{TearsSmall}}연사 +0.7"}, -- Wire Coat Hanger
	{"33", "성경", "사용 시 그 방에서 비행 능력을 얻습니다.#{{MomBossSmall}}Mom, {{MomsHeartSmall}}Mom's Heart/It Lives 보스에게 사용 시 보스를 즉사시킵니다.#!!! {{SatanSmall}}Satan 보스에게 사용 시 캐릭터가 즉사합니다."}, -- The Bible
	{"34", "벨리알의 책", "{{DevilChanceSmall}} 소지중일 때 악마방 확률 +12.5%#{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +2"}, -- The Book of Belial
	{"35", "네크로노미콘", "사용 시 방 전체 적에게 40의 피해를 줍니다."}, -- The Necronomicon
	{"36", "똥", "사용 시 똥을 싸며 주변의 적을 더 강하게 밀쳐냅니다.#1칸짜리 구덩이 바로 옆에서 똥을 싸고 폭탄으로 터트리면 해당 구덩이를 메울 수 있습니다."}, -- The Poop
	{"37", "미스터 붐", "사용 시 캐릭터의 위치에 공격력 110의 대형 폭탄을 설치합니다."}, -- Mr. Boom
	{"38", "태미의 머리", "사용 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사합니다."}, -- Tammy's Head
	{"39", "엄마의 브래지어", "{{Petrify}} 사용 시 그 방의 적들을 4초간 멈추게 합니다."}, -- Mom's Bra
	{"40", "카미카제!", "사용 시 캐릭터의 위치에 공격력 40의 폭발을 일으킵니다."}, -- Kamikaze!
	{"41", "엄마의 패드", "{{Fear}} 사용 시 그 방의 적들을 5초간 캐릭터에게서 도망가게 합니다."}, -- Mom's Pad
	{"42", "밥의 썩은 머리통", "사용 시 공격방향으로 공격력 50의 독폭탄을 발사합니다.#{{Poison}} 독폭탄은 캐릭터의 눈물 효과가 적용되며 맞은 적을 중독시킵니다."}, -- Bob's Rotten Head
	{"43", "Pills here!", "<item does not exist>"}, -- Pills here!
	{"44", "순간이동!", "사용 시 스테이지 안의 랜덤 방으로 순간이동합니다.#!!! 오류방으로는 이동하지 않습니다."}, -- Teleport!
	{"45", "맛난 하트", "{{HealingRed}} 사용 시 체력 1칸을 회복합니다."}, -- Yum Heart
	{"46", "행운의 발", "↑ {{LuckSmall}}행운 +1#↑ 방 클리어 보상이 등장할 확률이 대폭 증가합니다.#야바위와 도박기계의 성공 확률이 증가합니다."}, -- Lucky Foot
	{"47", "박사의 원격 조종기", "{{Collectible168}} 사용 시 조준점을 이동시킨 곳으로 캐릭터의 공격력 x20의 미사일을 발사합니다."}, -- Doctor's Remote
	{"48", "큐피드의 화살", "공격이 적을 관통합니다."}, -- Cupid's Arrow
	{"49", "모두 다 사라져빔!!", "사용 시 공격방향으로 공격력 x2의 레이저포를 발사합니다."}, -- Shoop da Whoop!
	{"50", "스티븐", "↑ {{DamageSmall}}공격력 +1"}, -- Steven
	{"51", "오망성", "↑ {{DamageSmall}}공격력 +1#↑ {{DevilChanceSmall}}악마방 확률 최대 +10%"}, -- Pentagram
	{"52", "태아 박사", "↓ {{TearsSmall}}공격 딜레이 x2.5#{{Bomb}} 공격이 폭탄 발사 공격으로 변경됩니다.#{{Damage}} 폭탄 공격력: x5 +30"}, -- Dr. Fetus
	{"53", "자석", "픽업이 캐릭터에게 끌려옵니다."}, -- Magneto
	{"54", "보물 지도", "{{Room}} 맵에 스테이지 구조를 표시합니다.#!!! 특수방 및 비밀방의 위치는 표시되지 않습니다."}, -- Treasure Map
	{"55", "엄마의 눈알", "50%의 확률로 캐릭터의 뒤에서 추가로 공격이 나갑니다.#{{LuckSmall}} 행운 2 이상일 때 100% 확률"}, -- Mom's Eye
	{"56", "레몬빛 실수", "사용 시 캐릭터의 주위에 노란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 줍니다."}, -- Lemon Mishap
	{"57", "짝사랑", "캐릭터 주위를 돌며 접촉하는 적에게 초당 75의 피해를 줍니다."}, -- Distant Admiration
	{"58", "그림자의 책", "사용 시 캐릭터가 10초간 무적 상태가 됩니다."}, -- Book of Shadows
	{"59", "Wiggle Worm", "<item does not exist>"}, -- Wiggle Worm
	{"60", "사다리", "구덩이 한칸을 지나갈 수 있습니다."}, -- The Ladder
	{"61", "Tarot card", "<item does not exist>"}, -- Tarot card
	{"62", "뱀파이어의 부적", "{{HealingRed}} 적 13기 처치 시 체력을 반칸 회복합니다."}, -- Charm of the Vampire
	{"63", "건전지", "{{Battery}} 액티브 아이템의 최대 충전량이 2배로 증가합니다.#2번 완충된 액티브 아이템은 연속으로 사용할 수 있습니다."}, -- The Battery
	{"64", "스팀 세일", "{{Shop}} 상점에서 판매하는 물품의 가격을 50% 할인합니다."}, -- Steam Sale
	{"65", "무정부주의자의 요리책", "사용 시 방 안에 트롤폭탄 6개를 생성합니다."}, -- Anarchist Cookbook
	{"66", "모래시계", "{{Slow}} 사용 시 그 방의 적들을 8초간 둔화시킵니다."}, -- The Hourglass
	{"67", "매기", "공격방향으로 공격력 3.5의 눈물을 발사합니다."}, -- Sister Maggy
	{"68", "기계장치", "공격이 레이저 공격으로 변경됩니다.#레이저는 사거리 제한이 없으며 적을 관통합니다."}, -- Technology
	{"69", "초콜릿 우유", "↓ {{TearsSmall}}공격 딜레이 x2.5 (최대 충전 기준)#{{Chargeable}} 눈물을 충전하며 발사합니다.#충전 상태에 따라 공격력 배율이 x0.1 ~ x4로 증감합니다."}, -- Chocolate Milk
	{"70", "성장 호르몬", "↑ {{DamageSmall}}공격력 +1#↑ {{SpeedSmall}}이동속도 +0.4"}, -- Growth Hormones
	{"71", "미니 버섯", "↓ {{RangeSmall}}사거리 -4.25#↑ {{SpeedSmall}}이동속도 +0.3#↑ 눈물 높이 +1.5 (실 사거리 증가)#캐릭터의 크기가 작아집니다."}, -- Mini Mush
	{"72", "묵주", "↑ {{SoulHeart}}소울하트 +3#!!! {{Collectible33}}The Bible이 모든 배열에서 등장합니다."}, -- Rosary
	{"73", "고기조각", "획득할 때마다 성장합니다.#{{ArrowGrayRight}} 1단계: 캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#{{ArrowGrayRight}} 2단계: 1단계 + 공격방향으로 공격력 3.5의 눈물을 발사합니다.#{{ArrowGrayRight}} 3/4단계: 적을 따라다니며 접촉한 적에게 초당 7/11의 피해를 줍니다."}, -- Cube of Meat
	{"74", "쿼터", "↑ {{Coin}}동전 +25"}, -- A Quarter
	{"75", "박사학위", "↑ {{HealingRed}}빨간하트 +2#{{Pill}} 알약을 하나 드랍합니다.#확인되지 않은 알약의 효과를 알 수 있습니다.#↑ 부정적인 알약 효과가 등장하지 않습니다.#헌혈기 사용 시 동전 1~2개를 추가로 드랍합니다."}, -- PHD
	{"76", "투시 안경", "{{SecretRoom}} 비밀방 및 {{SuperSecretRoom}}일급비밀방이 자동으로 열립니다."}, -- X-Ray Vision
	{"77", "나의 작은 유니콘", "{{Timer}} 사용 시 6초간:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.28#{{ArrowGrayRight}} 무적 상태가 되며 접촉한 적에게 초당 40의 피해를 줍니다."}, -- My Little Unicorn
	{"78", "요한묵시록", "{{DevilChanceSmall}} 소지중일 때 악마방 확률 +17.5%#{{SoulHeart}} 사용 시 소울하트 +1#{{ArrowGrayRight}} 가능한 경우, 그 스테이지의 보스를 4기사로 교체합니다."}, -- Book of Revelations
	{"79", "낙인", "↑ {{SoulHeart}}소울하트 +1#↑ {{DamageSmall}}공격력 +1#↑ {{SpeedSmall}}이동속도 +0.2"}, -- The Mark
	{"80", "계약", "↑ {{SoulHeart}}소울하트 +2#↑ {{DamageSmall}}공격력 +0.5#↑ {{TearsSmall}}연사 +0.7"}, -- The Pact
	{"81", "죽은 고양이", "↑ 목숨 +9#!!! {{Heart}}최대 체력이 1칸이 됩니다.#사망 시 전 방에서 최대 체력 1칸으로 부활합니다."}, -- Dead Cat
	{"82", "구덩이의 제왕", "↑ {{SpeedSmall}}이동속도 +0.3#비행 능력을 얻습니다."}, -- Lord of the Pit
	{"83", "대못", "!!! 사용 시:#{{ArrowGrayRight}} {{SoulHeart}}소울하트 +1#{{Timer}} 사용 시 그 방에서:#{{{ArrowGrayRight}} {DamageSmall}}공격력 +0.3#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 -0.2#{{ArrowGrayRight}} 접촉한 적에게 피해를 입히며 장애물을 부술 수 있습니다."}, -- The Nail
	{"84", "더 깊이 내려가야 해!", "사용 시 다음 스테이지로 가는 다락문을 생성합니다.#{{ArrowGrayRight}} 10%의 확률로 {{LadderRoom}}사다리방으로 가는 다락문을 생성합니다."}, -- We Need To Go Deeper!
	{"85", "카드 덱", "{{Card}} 사용 시 카드를 하나 획득합니다."}, -- Deck of Cards
	{"86", "몬스트로의 이빨", "사용 시 Monstro가 랜덤 적에게 떨어져 120의 피해를 줍니다.#!!! 적이 없을 때 사용 시 캐릭터의 위치로 떨어집니다."}, -- Monstro's Tooth
	{"87", "로키의 뿔", "25%의 확률로 공격이 4방향으로 나갑니다.#{{LuckSmall}} 행운 7 이상일 때 100% 확률"}, -- Loki's Horns
	{"88", "리틀 처비", "공격방향으로 돌진해 접촉하는 적에게 초당 52.5의 피해를 줍니다."}, -- Little Chubby
	{"89", "거미물림", "{{Slow}} 25%의 확률로 적을 둔화시키는 공격이 나갑니다.#{{LuckSmall}} 행운 15 이상일 때 100% 확률"}, -- Spider Bite
	{"90", "작은 돌", "↑ {{DamageSmall}}공격력 +1#↑ {{TearsSmall}}연사 +0.2#↓ {{SpeedSmall}}이동속도 -0.2"}, -- The Small Rock
	{"91", "탐험가 모자", "캐릭터가 있는 방에 인접한 곳에 있는 특수방을 맵에 표시합니다."}, -- Spelunker Hat
	{"92", "슈퍼 밴디지", "↑ {{Heart}}최대 체력 +1#↑ {{SoulHeart}}소울하트 +2"}, -- Super Bandage
	{"93", "게임키드", "사용 시 6.5초간 무적 상태가 되며 접촉한 적에게 초당 40의 피해를 줍니다.#{{Fear}} 적들이 캐릭터에게서 도망가며 적 2기를 죽일 때마다 {{HealingRed}}체력을 반칸 회복합니다."}, -- The Gamekid
	{"94", "동전 주머니", "{{Coin}} 방 2개 클리어 시 동전을 하나 드랍합니다."}, -- Sack of Pennies
	{"95", "로보베이비", "공격방향으로 공격력 3.5의 레이저를 발사합니다."}, -- Robo-Baby
	{"96", "리틀 차드", "{{HalfHeart}} 방 3개 클리어 시 빨간하트 반칸을 드랍합니다."}, -- Little C.H.A.D.
	{"97", "죄악의 책", "사용 시 랜덤 픽업을 드랍합니다."}, -- The Book of Sin
	{"98", "성유물", "{{SoulHeart}} 방 5~6개 클리어 시 소울하트 하나를 드랍합니다. "}, -- The Relic
	{"99", "리틀 기쉬", "{{Slow}} 공격방향으로 공격력 3.5의 둔화 눈물을 발사합니다."}, -- Little Gish
	{"100", "리틀 스티븐", "공격방향으로 공격력 3.5의 유도 눈물을 발사합니다."}, -- Little Steven
	{"101", "광륜", "↑ {{Heart}}최대 체력 +1#↑ {{DamageSmall}}공격력 +0.3#↑ {{TearsSmall}}연사 +0.2#↑ {{RangeSmall}}사거리 +0.25#↑ 눈물 높이 +0.5#↑ {{SpeedSmall}}이동속도 +0.3"}, -- The Halo
	{"102", "엄마의 약병", "{{Pill}} 사용 시 알약을 하나 획득합니다."}, -- Mom's Bottle of Pills
	{"103", "감기", "{{Poison}} 25%의 확률로 적을 중독시키는 공격이 나갑니다.#{{LuckSmall}} 행운 12 이상일 때 100% 확률"}, -- The Common Cold
	{"104", "기생충", "눈물이 무언가에 부딪힐 때마다 양옆으로 끝없이 갈라집니다.#갈라진 눈물의 공격력은 갈라지기 이전의 절반입니다.#!!! 공격력이 1 이하인 경우 눈물이 갈라지지 않음"}, -- The Parasite
	{"105", "주사위", "사용 시 그 방의 아이템을 다른 아이템으로 바꿉니다."}, -- The D6
	{"106", "미스터 메가", "↑ {{Bomb}}폭탄 +5#폭탄 공격력 배율 x1.83#폭탄의 범위가 넓어집니다."}, -- Mr. Mega
	{"107", "핑킹 가위", "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} 비행 능력을 얻으며 몸이 분리됩니다.#{{ArrowGrayRight}} 분리된 몸은 적을 따라다니며 접촉한 적에게 초당 82.5의 피해를 줍니다."}, -- The Pinking Shears
	{"108", "제병", "캐릭터가 받는 피해를 절반으로 줄여줍니다.#!!! 일부 피해는 해당 효과를 무시합니다."}, -- The Wafer
	{"109", "돈 = 힘", "동전 1개당 {{DamageSmall}}공격력 +0.04#{{Blank}} (최대 +3.96)"}, -- Money = Power
	{"110", "엄마의 콘텍트렌즈", "↑ {{RangeSmall}}사거리 +0.25#↑ 눈물 높이 +0.5#{{Petrify}} 20%의 확률로 적을 멈추게 만드는 공격이 나갑니다.#{{LuckSmall}} 행운 20 이상일 때 50% 확률"}, -- Mom's Contacts
	{"111", "콩", "{{Poison}} 사용 시 캐릭터 주변의 적을 중독시키는 독방귀를 뀝니다."}, -- The Bean
	{"112", "수호천사", "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#접촉한 적에게 초당 105의 피해를 줍니다.#캐릭터 주변을 도는 패밀리어들의 속도가 2배로 증가합니다."}, -- Guardian Angel
	{"113", "악마 아기", "적이 있는 방향으로 공격력 3의 빠른 눈물을 자동으로 발사합니다."}, -- Demon Baby
	{"114", "엄마의 식칼", "{{Chargeable}} 공격이 발사 후 돌아오는 근접 식칼로 변경됩니다.#공격키를 누르고 있으면 충전되며 충전량에 따라 사거리가 증가합니다.#칼 공격력: 기본 x2 ~ 최대 거리일때 x6"}, -- Mom's Knife
	{"115", "분신사바", "공격이 장애물을 관통합니다."}, -- Ouija Board
	{"116", "9볼트 건전지", "{{Battery}} 획득 시 액티브 아이템 충전량을 모두 충전합니다.#{{Battery}} 액티브 아이템 사용 시 충전량을 한칸 보존합니다."}, -- 9 Volt
	{"117", "죽은 새", "피격 시 적을 따라다니며 접촉한 적에게 초당 4.3의 피해를 줍니다."}, -- Dead Bird
	{"118", "유황", "↓ {{TearsSmall}}공격 딜레이 x3.0#{{Chargeable}} 공격이 충전형 혈사포 공격으로 변경됩니다.#혈사포는 다단히트로 최대 13번의 피해를 줍니다."}, -- Brimstone
	{"119", "혈액 팩", "↑ {{Heart}}최대 체력 +1#↑ {{HealingRed}}빨간하트 +4#↑ {{SpeedSmall}}이동속도 +0.3"}, -- Blood Bag
	{"120", "이상한 버섯", "↓ {{DamageSmall}}공격력 {{ColorOrange}}증가량{{CR}} 배율 x0.9#↓ {{DamageSmall}}추가 공격력 -0.4#↑ {{TearsSmall}}연사 +1.7#↑ {{SpeedSmall}}이동속도 +0.3#캐릭터의 머리가 작아집니다."}, -- Odd Mushroom
	{"121", "이상한 버섯", "↑ {{EmptyHeart}}빈 최대 체력 +1#↑ {{DamageSmall}}공격력 +0.3#↑ {{RangeSmall}}사거리 +0.25#↑ 눈물 높이 +0.5#↓ {{SpeedSmall}}이동속도 -0.1#캐릭터의 머리가 커집니다."}, -- Odd Mushroom
	{"122", "바빌론의 창녀", "!!! {{HalfHeart}}빨간하트가 반칸 이하일 때:#↑ {{DamageSmall}}공격력 +1.5#↑ {{SpeedSmall}}이동속도 +0.3"}, -- Whore of Babylon
	{"123", "몬스터 도감", "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} 랜덤 패밀리어를 하나 소환합니다."}, -- Monster Manual
	{"124", "사해사본", "사용 시 랜덤 액티브 아이템의 효과를 발동합니다."}, -- Dead Sea Scrolls
	{"125", "보비 폭탄", "↑ {{Bomb}}폭탄 +5#폭탄에 유도 효과가 생깁니다."}, -- Bobby-Bomb
	{"126", "면도날", "사용 시 체력 한칸을 깎고 그방에서 {{DamageSmall}}공격력 +1.2#공격력 증가 효과는 중첩됩니다.#빨간하트를 우선적으로 깎습니다."}, -- Razor Blade
	{"127", "날 잊어 주세요", "스테이지를 재시작합니다.#재시작한 스테이지는 구조가 바뀝니다."}, -- Forget Me Now
	{"128", "영원한 솔로", "캐릭터 주위를 돌며 접촉하는 적에게 초당 30의 피해를 줍니다."}, -- Forever alone
	{"129", "돼지기름 한 통", "↑ {{EmptyHeart}}빈 최대 체력 +2#↑ {{HalfHeart}}빨간하트 +0.5#↓ {{SpeedSmall}}이동속도 -0.2"}, -- Bucket of Lard
	{"130", "조랑말", "소지중일 때 비행 능력을 얻습니다.#{{SpeedSmall}}이동속도가 1.5 이상으로 고정됩니다.#사용 시 바라보는 방향으로 돌진하여 접촉한 적에게 40의 피해를 줍니다."}, -- A Pony
	{"131", "폭탄 주머니", "{{Bomb}} 방 3개 클리어 시 폭탄을 하나 드랍합니다."}, -- Bomb Bag
	{"132", "석탄 한 덩이", "공격이 멀리 나갈수록 타일 1칸당 피해량이 +0.6 증가합니다."}, -- A Lump of Coal
	{"133", "구피의 발", "{{SoulHeart}} 사용 시 최대 체력 1칸을 소울하트 3칸으로 바꿉니다."}, -- Guppy's Paw
	{"134", "구피의 꼬리", "{{Chest}} 방 클리어 보상이 33%의 확률로 상자 혹은 황금상자로 바뀝니다.#!!! 방 클리어 보상이 22%의 확률로 등장하지 않습니다."}, -- Guppy's Tail
	{"135", "수혈 팩", "사용 시 체력 반칸을 깎고 {{Coin}}동전을 1~2개 드랍합니다.#빨간하트를 우선적으로 깎습니다"}, -- IV Bag
	{"136", "최고의 친구", "사용 시 적을 유인하고 5초 뒤 공격력 110의 폭발을 일으키는 인형을 하나 설치합니다."}, -- Best Friend
	{"137", "원격 폭파기", "↑ {{Bomb}}폭탄 +5#폭탄이 아이템 사용 전까지 터지지 않습니다."}, -- Remote Detonator
	{"138", "성흔", "↑ {{Heart}}최대 체력 +1#↑ {{DamageSmall}}공격력 +0.3"}, -- Stigmata
	{"139", "엄마의 지갑", "장신구를 2개 들 수 있습니다."}, -- Mom's Purse
	{"140", "밥의 저주", "↑ {{Bomb}}폭탄 +5#{{Poison}} 폭탄에 독 효과가 생깁니다."}, -- Bob's Curse
	{"141", "분장 소년", "{{Coin}} 동전 7개를 드랍합니다."}, -- Pageant Boy
	{"142", "성의", "{{SoulHeart}} 피격 시 전체 체력이 반칸 남았을때 방당 1회 한정으로 소울하트를 하나 획득합니다.#방 이동 시 해당 효과를 다시 발동할 수 있습니다."}, -- Scapular
	{"143", "스피드볼 마약", "↑ {{SpeedSmall}}이동속도 +0.3#↑ {{ShotspeedSmall}}탄속 +0.2"}, -- Speed Ball
	{"144", "거지 친구", "방 안을 돌아다니며 동전을 먹으며 동전 3~4개마다 랜덤 픽업을 드랍합니다."}, -- Bum Friend
	{"145", "구피의 머리", "사용 시 파란 아군 파리를 2~4마리 소환합니다."}, -- Guppy's Head
	{"146", "기도 카드", "{{EternalHeart}} 사용 시 이터널하트 +1"}, -- Prayer Card
	{"147", "각진 곡괭이", "사용 시 그 방의 장애물을 부술 수 있습니다.#!!! 피격 시 해제됨"}, -- Notched Axe
	{"148", "감염", "피격 시 파란 아군 파리를 1~3마리 소환합니다."}, -- Infestation
	{"149", "구토제", "↑ {{DamageSmall}}공격력 +40#↓ {{TearsSmall}}공격 딜레이 x2.0 +10#폭발하는 독눈물을 곡선형으로 발사합니다."}, -- Ipecac
	{"150", "사랑의 매", "10%의 확률로 캐릭터의 공격력 x3.2의 공격이 나갑니다.#{{LuckSmall}} 행운 9 이상일 때 100% 확률"}, -- Tough Love
	{"151", "물리건", "적 명중 시 1/6 확률로 파란 아군 파리를 소환합니다."}, -- The Mulligan
	{"152", "기계장치 2", "↓ {{TearsSmall}}공격 딜레이 x2.0#↓ {{DamageSmall}}공격력 배율 x0.65#오른쪽 눈에서 공격력 20%의 지속 레이저를 발사합니다."}, -- Technology 2
	{"153", "돌연변이 거미", "↓ {{TearsSmall}}공격 딜레이 x2.1 +3#공격이 4발로 나갑니다."}, -- Mutant Spider
	{"154", "화학 박피제", "{{DamageSmall}} 왼쪽 눈의 피해량 +2"}, -- Chemical Peel
	{"155", "엿보기 눈깔", "대각선으로 돌아다니며 접촉한 적에게 초당 17의 피해를 줍니다."}, -- The Peeper
	{"156", "수녀복", "{{Battery}} 피격 시 액티브 아이템 충전량을 한칸 충전합니다."}, -- Habit
	{"157", "피의 욕망", "피격 시 그 스테이지에서 일정 배율의 {{DamageSmall}}공격력이 증가합니다.#{{Blank}} (최대 6회)"}, -- Bloody Lust
	{"158", "수정구슬", "사용 시 맵에 {{Room}}스테이지 구조와 특수방 위치를 표시하며 {{SoulHeart}}소울하트 또는 {{Card}}카드를 하나 드랍합니다."}, -- Crystal Ball
	{"159", "밤의 영혼", "비행 능력을 얻습니다.#공격이 장애물을 관통합니다."}, -- Spirit of the Night
	{"160", "하늘을 가르다", "사용 시 5개의 빛줄기를 소환하며 접촉하는 적에게 공격력 +20의 피해를 줍니다."}, -- Crack the Sky
	{"161", "앙크", "↑ 목숨 +1#{{Player4}} 사망 시 전 방에서 ??? 캐릭터로 부활합니다."}, -- Ankh
	{"162", "켈트 십자가", "{{Collectible58}} 피격 시 20%의 확률로 캐릭터가 6.66초간 무적 상태가 됩니다.#{{LuckSmall}} 행운 27 이상일 때 100% 확률"}, -- Celtic Cross
	{"163", "유령 아기", "공격방향으로 공격력 3.5의 장애물을 관통하는 눈물을 발사합니다."}, -- Ghost Baby
	{"164", "양초", "사용 시 공격방향으로 2초동안 지속되는 공격력 최대 184의 불꽃을 날립니다."}, -- The Candle
	{"165", "아홉 가닥 채찍", "↑ {{DamageSmall}}공격력 +1#↑ {{ShotspeedSmall}}탄속 +0.23"}, -- Cat-o-nine-tails
	{"166", "20면 주사위", "사용 시 그 방의 픽업을 다른 픽업으로 바꿉니다."}, -- D20
	{"167", "할리퀸 아기", "공격방향으로 공격력 4의 양갈래 눈물을 발사합니다."}, -- Harlequin Baby
	{"168", "쩌는 태아", "공격이 조준점을 이동시킨 곳으로 발사하는 미사일 공격으로 변경됩니다.#미사일 피해량: x20"}, -- Epic Fetus
	{"169", "폴리페무스", "↑ {{DamageSmall}}공격력 배율 x2#↑ {{DamageSmall}}공격력 +4#↓ {{TearsSmall}}공격 딜레이 x2.1 +3#적 처치 시 여분의 공격력을 남긴 채 관통합니다."}, -- Polyphemus
	{"170", "장님거미", "4초마다 다리가 적에게 떨어지며 40의 피해를 줍니다."}, -- Daddy Longlegs
	{"171", "거미 엉덩이", "{{Slow}} 사용 시 그 방의 적에게 10의 피해를 주고 4초간 둔화시킵니다."}, -- Spider Butt
	{"172", "희생의 단도", "캐릭터 주위를 돌며 적의 탄환을 막아주고 접촉하는 적에게 초당 225의 피해를 줍니다."}, -- Sacrificial Dagger
	{"173", "주교관", "{{SoulHeart}} 빨간하트 드랍 시 50% 확률로 소울하트로 바뀝니다."}, -- Mitre
	{"174", "무지개 아기", "공격방향으로 공격력 3~5의 랜덤 속성 눈물을 발사합니다."}, -- Rainbow Baby
	{"175", "아빠의 열쇠", "사용 시 그 방의 닫혀있는 문을 모두 엽니다."}, -- Dad's Key
	{"176", "줄기세포", "↑ {{Heart}}최대 체력 +1#↑ {{ShotspeedSmall}}탄속 +0.16"}, -- Stem Cells
	{"177", "휴대용 슬롯머신", "사용 시 동전 하나를 소모해 일정 확률로 도박기계에서 나올 수 있는 픽업을 드랍합니다."}, -- Portable Slot
	{"178", "성수", "피격 시 파란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 줍니다."}, -- Holy Water
	{"179", "운명", "↑ {{EternalHeart}}이터널하트 +1#비행 능력을 얻습니다."}, -- Fate
	{"180", "검은 콩", "피격 시 독방귀를 뀝니다."}, -- The Black Bean
	{"181", "하얀 조랑말", "소지중일 때 비행 능력을 얻습니다.#{{SpeedSmall}}이동속도가 1.5 이상으로 고정됩니다.#사용 시 바라보는 방향으로 돌진하여 접촉한 적에게 40의 피해를 입히고 5개의 빛줄기를 소환합니다."}, -- White Pony
	{"182", "성스러운 심장", "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 체력을 모두 회복합니다.#↑ {{DamageSmall}}공격력 +1#↑ {{DamageSmall}}공격력 배율 x2.3#↓ {{TearsSmall}}연사 -0.4#↑ {{RangeSmall}}사거리 +0.38#↑ 눈물 높이 +0.75#↓ {{ShotspeedSmall}}탄속 -0.25#공격에 유도 효과가 생깁니다.#폭탄에 유도 효과가 생깁니다."}, -- Sacred Heart
	{"183", "이쑤시개", "↑ {{TearsSmall}}연사 +0.7#↑ {{ShotspeedSmall}}탄속 +0.16"}, -- Tooth Picks
	{"184", "신성한 성배", "↑ {{Heart}}최대 체력 +1#비행 능력을 얻습니다."}, -- Holy Grail
	{"185", "죽은 비둘기", "비행 능력을 얻습니다.#공격이 장애물을 관통합니다."}, -- Dead Dove
	{"186", "피의 권리", "사용 시 체력을 1칸 깎고 그 방의 적에게 40의 피해를 줍니다.#빨간하트를 우선적으로 깎습니다."}, -- Blood Rights
	{"187", "구피의 털뭉치", "캐릭터 주위에서 움직이며 접촉한 적에게 초당 성장단계x2 +3의 피해를 줍니다.#성장단계는 적을 처치할수록 증가하며 스테이지 진입 시 일정 수치만큼 감소합니다."}, -- Guppy's Hairball
	{"188", "아벨", "캐릭터의 반대로 움직이며 캐릭터가 있는 방향으로 공격력 3.5의 눈물을 발사합니다."}, -- Abel
	{"189", "슈미보 광팬", "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 체력을 모두 회복합니다.#↑ {{DamageSmall}}공격력 +0.3#↑ {{TearsSmall}}연사 +0.2#↑ {{RangeSmall}}사거리 +0.5#↑ 눈물 높이 +1#↑ {{SpeedSmall}}이동속도 +0.2"}, -- SMB Super Fan
	{"190", "폭탄마", "↑ {{Bomb}}폭탄 +99"}, -- Pyro
	{"191", "3달러 지폐", "3초마다 두 종류의 랜덤 눈물 효과가 적용됩니다."}, -- 3 Dollar Bill
	{"192", "천재반을 위한 텔레파시법", "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} 공격이 적에게 유도됩니다."}, -- Telepathy For Dummies
	{"193", "고기!", "↑ {{Heart}}최대 체력 +1#↑ {{DamageSmall}}공격력 +0.3"}, -- MEAT!
	{"194", "마법의 8번 공", "↑ {{ShotspeedSmall}}탄속 +0.16#{{Card}}카드를 하나 드랍합니다."}, -- Magic 8 Ball
	{"195", "엄마의 동전 지갑", "{{Pill}} 알약을 4개 드랍합니다."}, -- Mom's Coin Purse
	{"196", "쥐어짜기 장난감", "↑ {{TearsSmall}}연사 +0.4#{{SoulHeart}} 소울하트를 2개 드랍합니다."}, -- Squeezy
	{"197", "예수 주스", "↑ {{DamageSmall}}공격력 +0.5#↑ {{RangeSmall}}사거리 +0.25#↑ 눈물 높이 +0.5"}, -- Jesus Juice
	{"198", "상자", "모든 종류의 픽업을 하나씩 드랍합니다."}, -- Box
	{"199", "엄마의 열쇠", "↑ {{Key}}열쇠 +2#{{Chest}} 상자를 열 때 드랍되는 픽업의 수가 증가합니다."}, -- Mom's Key
	{"200", "엄마의 아이섀도우", "{{Charm}} 10%의 확률로 적을 매혹시키는 공격이 나갑니다.#{{LuckSmall}} 행운 27 이상일 때 100% 확률"}, -- Mom's Eyeshadow
	{"201", "철괴", "↑ {{DamageSmall}}공격력 +0.3#{{Confusion}} 10%의 확률로 적을 혼란시키는 공격이 나갑니다.#{{LuckSmall}} 행운 27 이상일 때 100% 확률"}, -- Iron Bar
	{"202", "미다스의 손길", "{{Petrify}} 적에게 접촉시 접촉한 적을 멈추게 만들며 멈춘 적 처치 시 {{Coin}}동전을 1~3개 드랍합니다.#!!! 접촉 대미지 : 소지 동전 수#캐릭터가 똥을 쌀 때 일정 확률로 황금 똥으로 나옵니다."}, -- Midas' Touch
	{"203", "험블 번들", "{{Heart}}빨간하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 픽업이 1+1로 나옵니다."}, -- Humbleing Bundle
	{"204", "주머니 가방", "피격 시 50% 확률로 픽업을 드랍합니다."}, -- Fanny Pack
	{"205", "날카로운 플러그", "액티브 아이템의 {{ColorOrange}}충전량이 없을 때{{CR}} 액티브 아이템 사용 시 체력 두 칸을 깎고 액티브의 충전량을 모두 충전합니다."}, -- Sharp Plug
	{"206", "단두대", "↑ {{DamageSmall}}공격력 +1#↑ {{TearsSmall}}연사 +0.2#머리가 분리되어 몸의 주변을 돌며 적의 탄환을 막아주고 접촉하는 적에게 초당 105의 피해를 줍니다."}, -- Guillotine
	{"207", "밴드 덩어리", "획득할 때마다 성장합니다.#{{ArrowGrayRight}} 1/2단계: 캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#{{ArrowGrayRight}} 2/3단계: {{Charm}}공격방향으로 공격력 3.5의 매혹 눈물을 발사합니다.#{{ArrowGrayRight}} 3/4단계: 적을 따라다니며 접촉한 적에게 초당 7/11의 피해를 줍니다.#{{ArrowGrayRight}} 4단계: 밴디지 걸이 적 처치 시 일정 확률로 {{Heart}}빨간하트를 드랍합니다."}, -- Ball of Bandages
	{"208", "챔피언 벨트", "↑ {{DamageSmall}}공격력 +1#!!! 일반적인 적이 챔피언으로 바뀔 확률 +5~20%p#챔피언 몬스터는 체력이 평소의 2배, 캐릭터에게 최소 체력 1칸의 피해를 주며 색상별로 특수 효과가 적용됩니다."}, -- Champion Belt
	{"209", "궁둥이 폭탄", "↑ {{Bomb}}폭탄 +5#{{Confusion}} 폭탄이 터질 때 그 방의 적에게 10의 피해를 주고 4초간 혼란시킵니다.#!!! 똥 타입 보스의 체력을 25% 회복시킵니다."}, -- Butt Bombs
	{"210", "갉아먹힌 나뭇잎", "2초간 어떠한 키도 입력하지 않을 시 캐릭터가 무적 상태가 됩니다."}, -- Gnawed Leaf
	{"211", "새끼 거미", "피격 시 파란 아군 거미를 1~2마리 소환합니다."}, -- Spider Baby
	{"212", "구피의 목걸이", "사망 시 50% 확률로 전 방에서 체력 반 칸으로 부활합니다."}, -- Guppy's Collar
	{"213", "잃어버린 렌즈", "↓ {{ShotspeedSmall}}탄속 -0.16#공격이 적의 탄환을 막습니다.#!!! 적을 관통하는 효과가 없을 경우 적의 탄환을 막은 눈물은 사라집니다."}, -- Lost Contact
	{"214", "빈혈증", "↑ {{RangeSmall}}사거리 +5#피격 시 그 방에서 캐릭터가 지나간 자리에 빨간 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다."}, -- Anemic
	{"215", "염소 머리", "{{AngelDevilChanceSmall}} 악마방/천사방 확률이 100%로 고정됩니다."}, -- Goat Head
	{"216", "의식용 로브", "↑ {{BlackHeart}}블랙하트 +3#↑ {{DamageSmall}}공격력 +1"}, -- Ceremonial Robes
	{"217", "엄마의 가발", "↑ {{HealingRed}}빨간하트 +1#공격 시 일정 확률로 파란 아군 거미를 소환합니다. (최대 5마리)#{{LuckSmall}} 행운 10 이상일 때 100% 확률"}, -- Mom's Wig
	{"218", "태반", "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 타이머가 1분 00초가 될 때마다 일정 확률로 체력 반칸을 회복합니다."}, -- Placenta
	{"219", "낡은 밴드", "↑ {{EmptyHeart}}빈 최대 체력 +1#피격 시 10% 확률로 {{Heart}}빨간하트를 하나 드랍합니다.#{{LuckSmall}} 행운 27 이상일 때 50% 확률"}, -- Old Bandage
	{"220", "눈물 폭탄", "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때 폭탄 기준 10방향으로 공격력 +25의 눈물을 발사합니다."}, -- Sad Bombs
	{"221", "고무 접착제", "공격이 무언가에 부딪힐 때 반대 각도로 튕겨져 나갑니다."}, -- Rubber Cement
	{"222", "반중력", "↑ {{TearsSmall}}공격 딜레이 -2#공격키를 누르고 있을 시 눈물이 생성된 장소에서 멈추며 공격키를 떼거나 일정 시간이 지나면 발사됩니다."}, -- Anti-Gravity
	{"223", "방화광", "↑ {{Bomb}}폭탄 +5#폭발 및 지진파 공격에 피해를 입지 않으며 폭발을 맞으면 {{HealingRed}}체력을 1칸 회복합니다."}, -- Pyromaniac
	{"224", "크리켓의 몸", "↑ {{TearsSmall}}연사 +0.2#↓ {{RangeSmall}}사거리 -10#눈물이 무언가에 부딪힐 때 네갈래로 갈라집니다."}, -- Cricket's Body
	{"225", "김피", "{{HalfHeart}} 적 처치 시 일정 확률로 빨간하트가 반칸 드랍됩니다.#{{SoulHeart}} 피격 시 8% 확률로 소울하트 또는 블랙하트를 드랍합니다.#{{LuckSmall}} 행운 46 이상일 때 100% 확률"}, -- Gimpy
	{"226", "검은 연꽃", "↑ {{Heart}}최대 체력 +1#↑ {{SoulHeart}}소울하트 +1#↑ {{BlackHeart}}블랙하트 +1"}, -- Black Lotus
	{"227", "돼지 저금통", "↑ {{Coin}}동전 +3#{{Coin}} 피격 시 동전을 1~2개 드랍합니다."}, -- Piggy Bank
	{"228", "엄마의 향수", "↑ {{TearsSmall}}연사 +0.2#15%의 확률로 적을 {{Fear}}도망가게 하는 공격이 나갑니다.#{{LuckSmall}} 행운 85 이상일 때 100% 확률"}, -- Mom's Perfume
	{"229", "몬스트로의 폐", "↓ {{TearsSmall}}공격 딜레이 x4.3#{{Chargeable}} 공격을 충전한 다음 여러 개의 눈물을 흩뿌리면서 발사합니다."}, -- Monstro's Lung
	{"230", "아바돈", "!!! 최대 체력이 모두 제거됩니다.#↑ {{BlackHeart}}블랙하트 +6#↑ {{DamageSmall}}공격력 +1.5#↑ {{SpeedSmall}}이동속도 +0.2#15%의 확률로 적을 {{Fear}}도망가게 하는 공격이 나갑니다.#{{LuckSmall}} 행운 85 이상일 때 100% 확률"}, -- Abaddon
	{"231", "타르 덩어리", "{{Slow}} 캐릭터가 지나간 자리에 검은 장판이 생기며 닿은 적은 느려집니다.#{{Slow}} 10%의 확률로 적을 둔화시키는 공격이 나갑니다.#{{LuckSmall}} 행운 18 이상일 때 100% 확률"}, -- Ball of Tar
	{"232", "스톱워치", "↑ {{SpeedSmall}}이동속도 +0.3#피격 시 혹은 {{HolyMantleSmall}}Holy Mantle의 보호막 파괴 시 그 방의 적들을 영구적으로 둔화시킵니다."}, -- Stop Watch
	{"233", "소행성", "↑ 눈물 높이 +7#공격이 장애물을 관통합니다.#공격이 캐릭터 주위를 돌면서 발사됩니다."}, -- Tiny Planet
	{"234", "감염 2", "적 처치 시 파란 아군 거미를 소환합니다."}, -- Infestation 2
	{"235", "", "<item does not exist>"}, --
	{"236", "대장균", "적에게 접촉 시 접촉한 적을 똥으로 만듭니다."}, -- E. Coli
	{"237", "죽음의 손길", "↑ {{DamageSmall}}공격력 +1.5#↓ {{TearsSmall}}연사 -0.3#공격이 적을 관통합니다."}, -- Death's Touch
	{"238", "열쇠 조각 1", "{{MegaSatanSmall}} Key Piece 2와 조합 시 Chest/Dark Room 스테이지에서 거대한 금색 문을 열 수 있습니다.#{{EternalHeart}} 빨간하트가 드랍될 때 2.5%의 확률로 이터널하트로 대체됩니다.#↑ {{AngelChanceSmall}}천사방 확률 +25%"}, -- Key Piece 1
	{"239", "열쇠 조각 2", "{{MegaSatanSmall}} Key Piece 1과 조합 시 Chest/Dark Room 스테이지에서 거대한 금색 문을 열 수 있습니다.#{{EternalHeart}} 빨간하트가 드랍될 때 2.5%의 확률로 이터널하트로 대체됩니다.#↑ {{AngelChanceSmall}}천사방 확률 +25%"}, -- Key Piece 2
	{"240", "임상시험", "!!! 아래의 능력치 중;#↑ 능력치 4종류 증가#↓ 능력치 2종류 감소#!!! {{EmptyHeart}}빈 최대 체력 ±1#{{Blank}} {{SpeedSmall}}이동속도 ±0.2#{{Blank}} {{TearsSmall}}눈물 딜레이 ±1#{{Blank}} {{DamageSmall}}최종 공격력 ±1#{{Blank}} {{RangeSmall}}사거리 ±0.5#{{Blank}} {{ShotspeedSmall}}탄속 ±0.2#{{Blank}} {{LuckSmall}}행운 ±1"}, -- Experimental Treatment
	{"241", "지하로부터의 계약", "방 클리어 보상이 하나 더 나옵니다.#방 클리어 보상이 33%의 확률로 등장하지 않습니다.#{{Blank}} (중첩 시 보상 개수 증가, 보상 미등장 확률 감소)"}, -- Contract from Below
	{"242", "악명", "적 탄환에 맞았을 때 50% 확률로 피해를 무시합니다."}, -- Infamy
	{"243", "삼위일체 방패", "캐릭터의 공격 방향에서 오는 적의 탄환을 모두 방어합니다."}, -- Trinity Shield
	{"244", "기계 0.5", "공격 시 캐릭터의 이마 쪽에서 보조 레이저가 발사됩니다."}, -- Tech.5
	{"245", "시력 2.0", "공격이 2발로 나갑니다."}, -- 20/20
	{"246", "파란 지도", "{{SecretRoom}} 맵에 비밀방, {{SuperSecretRoom}}일급비밀방의 위치가 표시됩니다."}, -- Blue Map
	{"247", "베프들!", "패밀리어들의 피해량이 2배로 증가합니다."}, -- BFFS!
	{"248", "군체의식", "파란 아군 파리 및 거미의 공격력이 2배로 증가합니다."}, -- Hive Mind
	{"249", "추가 선택권", "{{BossRoom}} 보스방 보상 아이템이 2개가 나오며 하나를 선택하면 나머지는 사라집니다."}, -- There's Options
	{"250", "1+1 폭탄", "{{Bomb}} 폭탄 픽업이 1+1로 나옵니다."}, -- BOGO Bombs
	{"251", "스타터 덱", "{{Card}} 카드를 하나 드랍합니다.#{{Card}} 카드를 2개 들 수 있습니다.#카드는 {{ButtonRT}}버튼으로 교체할 수 있습니다.#!!! 모든 알약이 카드로 교체됩니다."}, -- Starter Deck
	{"252", "작은 주머니", "{{Pill}} 알약을 하나 드랍합니다.#{{Pill}} 알약을 2개 들 수 있습니다.#알약은 {{ButtonRT}}버튼으로 교체할 수 있습니다.#!!! 모든 카드가 알약으로 교체됩니다."}, -- Little Baggy
	{"253", "마법의 딱쟁이", "↑ {{Heart}}최대 체력 +1#↑ {{LuckSmall}}행운 +1"}, -- Magic Scab
	{"254", "응고혈", "왼쪽 눈에서 {{DamageSmall}}공격력 +1, {{RangeSmall}}사거리 +5의 공격을 발사합니다."}, -- Blood Clot
	{"255", "나사못", "↑ {{TearsSmall}}연사 +0.5#↑ {{ShotspeedSmall}}탄속 +0.2"}, -- Screw
	{"256", "불폭탄", "↑ {{Bomb}}폭탄 +5#폭탄이 터진 자리에 불꽃이 남으며 불꽃에 닿은 적은 초당 66의 피해를 받습니다."}, -- Hot Bombs
	{"257", "불타는 마음", "{{Burning}} 적에게 화상을 입히는 공격이 나갑니다.#!!! 10% 확률로 공격력의 2배의 피해를 주고 불꽃이 남는 폭발을 일으키는 눈물이 나갑니다.#{{LuckSmall}} 행운 13 이상일 때 100% 확률"}, -- Fire Mind
	{"258", "", "획득 시 및 스테이지를 넘어갈 때마다 소지중인 아이템과 능력치를 모두 바꿉니다."}, -- Missing No.
	{"259", "암흑 물질", "↑ {{DamageSmall}}공격력 +1#{{Fear}} 33%의 확률로 적을 도망가게 하는 공격이 나갑니다.#{{LuckSmall}} 행운 20 이상일 때 100% 확률"}, -- Dark Matter
	{"260", "검은 양초", "↑ {{BlackHeart}}블랙하트 +1#↑ {{DevilChanceSmall}}악마방 확률 +15%#{{CurseCursedSmall}} 스테이지에 입장할 때 저주에 걸리지 않습니다.#{{CurseCursedSmall}} 획득 시 Labyrinth/챌린지/특수 시드를 제외한 모든 저주를 제거합니다."}, -- Black Candle
	{"261", "안구 돌출증", "↑ {{DamageSmall}}공격력 배율 x2#공격이 멀리 나갈수록 공격력 배율이 최소 x1.3까지 감소합니다."}, -- Proptosis
	{"262", "찢어진 페이지 2", "↑ {{BlackHeart}}블랙하트 +1#피격 시 전체 체력이 1칸 이하일 때 그 방의 적에게 40의 피해를 줍니다."}, -- Missing Page 2
	{"263", "", "<item does not exist>"}, --
	{"264", "똑똑한 파리", "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#피격 시 적을 따라다니며 접촉한 적에게 초당 22.5의 피해를 줍니다."}, -- Smart Fly
	{"265", "마른 아기", "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#{{Collectible35}} 탄환을 막을 시 10% 확률로 그 방의 적에게 40의 피해를 줍니다."}, -- Dry Baby
	{"266", "축축한 알집", "{{Slow}} 캐릭터를 따라다니며 지나간 자리에 하얀 장판이 생깁니다.#{{Slow}} 하얀 장판에 닿은 적은 느려집니다.#방 클리어 시 파란 아군 거미를 1~2마리 소환합니다."}, -- Juicy Sack
	{"267", "로보 아기 2.0", "공격방향으로 움직입니다.#십자 모양 안의 적이 있는 방향으로 공격력 3.5의 레이저를 자동으로 발사합니다."}, -- Robo-Baby 2.0
	{"268", "썩은 아기", "공격할 때마다 파란 아군 파리를 최대 1마리씩 소환합니다."}, -- Rotten Baby
	{"269", "머리없는 아기", "캐릭터를 따라다니며 지나간 자리에 빨간 장판이 생깁니다.#빨간 장판에 닿은 적은 초당 6의 피해를 받습니다."}, -- Headless Baby
	{"270", "거머리", "적을 따라다니며 접촉한 적에게 초당 3.2의 피해를 줍니다.#{{HealingRed}} 적 처치 시 체력을 반칸 회복합니다."}, -- Leech
	{"271", "수수께끼의 주머니", "방 5~6개 클리어 시 랜덤 픽업을 드랍합니다."}, -- Mystery Sack
	{"272", "베프", "대각선으로 돌아다니며 적에게 접촉 시 폭발하여 60의 피해를 줍니다."}, -- BBF
	{"273", "밥의 뇌", "공격방향으로 날아가며 적에게 접촉 시 폭발하여 60의 피해를 줍니다."}, -- Bob's Brain
	{"274", "최고의 짝꿍", "피격 시 캐릭터 주위를 돌며 접촉하는 적에게 초당 75의 피해를 줍니다."}, -- Best Bud
	{"275", "꼬마 유황", "{{Chargeable}} 공격방향으로 최대 공격력 31.5의 혈사포를 충전하여 발사합니다."}, -- Lil Brimstone
	{"276", "아이작의 심장", "캐릭터를 따라다니며 캐릭터가 무적이 되고 심장이 피격당할 시 캐릭터가 피해를 받습니다."}, -- Isaac's Heart
	{"277", "꼬마 유령", "{{Fear}} 적을 따라다니며 접촉하는 적에게 초당 4의 피해를 주고 도망가게 합니다."}, -- Lil Haunt
	{"278", "악마 거지", "방 안을 돌아다니며 빨간하트를 먹으며 1.5개의 빨간하트를 먹으면 {{SoulHeart}}소울하트 또는 적 거미를 드랍합니다."}, -- Dark Bum
	{"279", "왕팬", "캐릭터 주위를 느리게 돌며 적의 탄환을 막아줍니다.#접촉한 적에게 초당 30의 피해를 줍니다."}, -- Big Fan
	{"280", "눈나 거미", "방 안에 적이 있을 때 랜덤하게 파란 아군 거미를 소환합니다."}, -- Sissy Longlegs
	{"281", "샌드백", "방 안을 돌아다니며 6초 간격으로 적을 유인합니다."}, -- Punching Bag
	{"282", "점프 하는 법", "사용 시 이동 방향으로 점프합니다.#{{Blank}} {{ColorGray}}(착지할 수 있는 위치로 자동 보정)"}, -- How to Jump
	{"283", "100면 주사위", "사용 시 그 방의 아이템, 픽업, 소지중인 패시브 아이템을 모두 바꿉니다."}, -- D100
	{"284", "4면 주사위", "사용 시 소지중인 패시브 아이템을 모두 바꿉니다."}, -- D4
	{"285", "10면 주사위", "사용 시 그 방의 적을 바꿉니다."}, -- D10
	{"286", "빈 카드", "사용 시 가장 앞면에 소지중인 {{Card}}카드 또는 {{Rune}}룬의 효과를 발동합니다."}, -- Blank Card
	{"287", "비밀의 책", "사용 시 맵에 {{Collectible21}}특수방 위치, {{Collectible246}}비밀방 위치, {{Collectible54}}스테이지 구조 중 하나를 표시합니다."}, -- Book of Secrets
	{"288", "거미 상자", "사용 시 파란 아군 거미를 2~4마리 소환합니다."}, -- Box of Spiders
	{"289", "빨간 양초", "사용 시 공격방향으로 최대 공격력 125의 지속 불꽃을 날립니다."}, -- Red Candle
	{"290", "유리병", "{{Heart}} 최대 체력이 가득 찬 상태에서 빨간하트 획득 시 병에 하트가 저장됩니다.#{{Heart}} 사용 시 저장된 빨간하트를 꺼내 드랍합니다."}, -- The Jar
	{"291", "쏴아!", "사용 시 그 방의 일반 적을 똥으로 바꿉니다.#똥 타입의 적들 및 보스를 즉사시킵니다."}, -- Flush!
	{"292", "사탄경", "{{BlackHeart}} 사용 시 블랙하트 +1"}, -- Satanic Bible
	{"293", "크람푸스의 머리", "사용 시 대각선 또는 십자 방향으로 최대 446의 피해를 주는 혈사포를 발사합니다."}, -- Head of Krampus
	{"294", "흰강낭콩", "사용 시 방귀를 뀌며 주변의 적을 더 강하게 밀쳐냅니다.#{{Collectible484}} 다른 액티브 아이템과 교체 시 확률적으로 Wait What? 아이템으로 바뀝니다."}, -- Butter Bean
	{"295", "침대 안마기", "!!! 사용 시 {{Coin}}동전을 1개 소모하고;#{{ArrowGrayRight}} 그 방의 적에게 눈물 공격력 x2의 피해를 줍니다."}, -- Magic Fingers
	{"296", "변환기", "{{Heart}} 사용 시 소울하트 2칸을 최대 체력 1칸으로 바꿉니다."}, -- Converter
	{"297", "판도라의 상자", "사용 시 스테이지마다 다른 보상을 드랍합니다.#{{NoLB}}B1(1): {{SoulHeart}} 2개; B2(2): {{Bomb}} 2개 + {{Key}} 2개#{{NoLB}}C1(3): {{BossRoom}}아이템 1개; C2(4): {{BossRoom}} 1개 + {{SoulHeart}} 2개#{{NoLB}}D1(5): {{SoulHeart}} 4개; D2(6): {{Coin}} 20개#{{NoLB}}W1(7): {{BossRoom}} 2개; W2(8): {{Collectible33}}The Bible#???/Void: 없음#{{NoLB}}Sheol: {{DevilRoom}}악마방 아이템 1개 + {{BlackHeart}} 1개#{{NoLB}}Cath: {{AngelRoom}}천사방 아이템 1개 + {{EternalHeart}} 1개#{{NoLB}}Dark: {{Collectible523}}Moving Box 해금#{{NoLB}}Chest: {{Coin}}동전 1개"}, -- Pandora's Box
	{"298", "유니콘의 잘린 뿔", "{{Timer}} 사용 시 6.5초간:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.28#{{ArrowGrayRight}} 공격불능 및 접촉공격불능 무적 상태가 됩니다."}, -- Unicorn Stump
	{"299", "황소자리", "↓ {{SpeedSmall}}이동속도{{ColorOrange}}(상한){{CR}} -0.3#그 방에 적이 있는 동안 이동속도가 점점 증가합니다.#{{Collectible77}} 이동속도가 2.0이 되면 5초간 무적 상태가 됩니다."}, -- Taurus
	{"300", "양자리", "↑ {{SpeedSmall}}이동속도 +0.25#높은 속도로 적과 접촉시 적에게 18의 피해를 줍니다."}, -- Aries
	{"301", "게자리", "↑ {{SoulHeart}}소울하트 +3#{{Collectible108}} 피격 시 이후 그 방에서 받는 피해를 절반으로 줄여줍니다."}, -- Cancer
	{"302", "사자자리", "장애물을 부술 수 있습니다."}, -- Leo
	{"303", "처녀자리", "{{Pill}} 부정적인 알약 효과가 등장하지 않습니다.#{{Collectible58}} 피격 시 일정 확률로 10초간 무적 상태가 됩니다.#{{LuckSmall}} 행운 10 이상일 때 100% 확률"}, -- Virgo
	{"304", "천칭자리", "{{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 +6#{{ArrowUpDown}} {{DamageSmall}}공격력, {{TearsSmall}}연사, {{RangeSmall}}사거리, {{SpeedSmall}}이동속도가 항상 균등하게 조정됩니다."}, -- Libra
	{"305", "전갈자리", "{{Poison}} 항상 적을 중독시키는 공격이 나갑니다."}, -- Scorpio
	{"306", "사수자리", "↑ {{SpeedSmall}}이동속도 +0.2#공격이 적을 관통합니다."}, -- Sagittarius
	{"307", "염소자리", "↑ {{Heart}}최대 체력 +1#↑ {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 +1#↑ {{DamageSmall}}공격력 +0.5#↑ {{TearsSmall}}눈물 딜레이 -1#↑ {{RangeSmall}}사거리 +1.5#↑ {{SpeedSmall}}이동속도 +0.1"}, -- Capricorn
	{"308", "물병자리", "캐릭터가 지나간 자리에 파란 장판이 생깁니다.#파란 장판에 닿은 적은 초당 6의 피해를 받습니다."}, -- Aquarius
	{"309", "물고기자리", "↑ {{TearsSmall}}연사 +0.2#↑ {{TearsizeSmall}}눈물크기 x1.25#공격이 적을 더 강하게 밀쳐냅니다."}, -- Pisces
	{"310", "이브의 마스카라", "↑ {{DamageSmall}}공격력 배율 x2#↓ {{TearsSmall}}연사 배율 x0.2#↓ {{ShotspeedSmall}}탄속 -0.5"}, -- Eve's Mascara
	{"311", "유다의 그림자", "↑ 목숨 +1#{{Player12}} 사망 시 전 방에서 Black Judas 캐릭터#{{Blank}} (2{{BlackHeart}}/{{DamageSmall}}공격력 배율 x2/{{SpeedSmall}}이동속도 +0.1)로 부활합니다."}, -- Judas' Shadow
	{"312", "매기의 리본", "↑ {{Heart}}최대 체력 +1#{{HealingRed}} 빨간하트 획득량이 2배로 증가합니다."}, -- Maggy's Bow
	{"313", "신성한 망토", "{{HolyMantleSmall}} 피격 시 방당 1회 한정으로 피해를 무시합니다.#!!! 헌혈류 피격은 막아주지 않습니다."}, -- Holy Mantle
	{"314", "살찐 허벅지", "↑ {{Heart}}최대 체력 +1#↓ {{SpeedSmall}}이동속도 -0.4#장애물을 부술 수 있습니다."}, -- Thunder Thighs
	{"315", "이상한 끌개", "적과 픽업이 공격에 끌려옵니다."}, -- Strange Attractor
	{"316", "저주받은 눈알", "{{Chargeable}} 눈물을 충전한 다음 최대 4발의 눈물을 일렬로 발사합니다.#!!! 충전중 피격 시 그 스테이지의 랜덤 방으로 순간이동합니다."}, -- Cursed Eye
	{"317", "이상한 액체", "공격이 무언가에 부딪힐 때 초록 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다."}, -- Mysterious Liquid
	{"318", "쌍둥이자리", "캐릭터와 연결되어 이동하며 적을 따라다닙니다.#접촉한 적에게 초당 6의 피해를 줍니다."}, -- Gemini
	{"319", "카인의 왼쪽 눈", "대각선으로 이동합니다.#공격방향으로 캐릭터의 공격력과 같은 눈물을 발사합니다."}, -- Cain's Other Eye
	{"320", "???의 하나뿐인한 친구", "공격방향으로 이동합니다.#접촉하는 적에게 초당 37.5의 피해를 줍니다."}, -- ???'s Only Friend
	{"321", "삼손의 쇠사슬", "캐릭터와 연결되어 이동합니다.#접촉하는 적에게 초당 10.7의 피해를 줍니다."}, -- Samson's Chains
	{"322", "누더기 아기", "공격방향으로 소지중인 패밀리어과 같은 효과의 눈물을 발사합니다.#발사할 수 있는 패밀리어가 없는 경우 공격력 3.5의 눈물을 발사합니다."}, -- Mongo Baby
	{"323", "아이작의 눈물", "사용 시 캐릭터 기준 8방향으로 눈물을 발사합니다.#눈물을 발사할 때마다 충전량이 증가합니다."}, -- Isaac's Tears
	{"324", "", "사용 시 {{SecretRoom}}비밀방, {{SuperSecretRoom}}일급 비밀방, {{TreasureRoom}}보물방, {{ErrorRoom}}오류방 중 하나로 순간이동합니다.#{{Blank}} {{ColorGray}}(블랙마켓의 경우 1%)"}, -- Undefined
	{"325", "가위", "사용 시 머리가 분리됩니다.#{{ArrowGrayRight}} 분리된 머리는 제자리에서 공격방향으로 공격력 3.5의 눈물을 발사합니다."}, -- Scissors
	{"326", "생명의 숨결", "사용 키를 누르고 있으면 충전량이 줄어들며 충전량이 모두 줄어들면 1초간 무적 상태가 됩니다.#무적 상태가 끝나도 키를 누르면 체력 반 칸의 피해를 받습니다."}, -- Breath of Life
	{"327", "즉석사진", "{{Collectible58}} 피격 시 {{HalfHeart}}빨간하트가 반칸 이하일 때 5초간 무적 상태가 됩니다.#Chest 스테이지 진입에 필요한 아이템입니다."}, -- The Polaroid
	{"328", "반전사진", "{{Collectible35}} 피격 시 {{HalfHeart}}빨간하트가 반칸 이하일 때 그 방의 적에게 40의 피해를 줍니다.#Dark Room 스테이지 진입에 필요한 아이템입니다."}, -- The Negative
	{"329", "루도비코 요법", "공격이 공격키로 조종 가능한 원격 눈물 공격으로 변경됩니다."}, -- The Ludovico Technique
	{"330", "두유", "↓ {{DamageSmall}}공격력 배율 x0.2#↑ {{TearsSmall}}연사 배율 x4 +2#↓ {{TearsizeSmall}}눈물크기 x0.5"}, -- Soy Milk
	{"331", "신", "↑ {{DamageSmall}}공격력 +0.5#↓ {{TearsSmall}}연사 -0.3#↑ {{RangeSmall}}사거리 +1.2#↑ 눈물 높이 +0.8#↓ {{ShotspeedSmall}}탄속 -0.3#공격이 적에게 유도됩니다.#눈물에 후광이 생기며 후광에 닿은 적은 초당 공격력의 x4.5의 피해를 받습니다."}, -- Godhead
	{"332", "나사로의 붕대", "↑ 목숨 +1#{{Player11}} 사망 시 즉시 Lazarus 캐릭터#{{Blank}} (1{{Heart}}/{{DamageSmall}}공격력 배율 x1.2/{{Collectible214}}Anemic)로 부활합니다."}, -- Lazarus' Rags
	{"333", "정신", "맵에 스테이지 구조, 특수방 위치, 비밀방 위치가 표시됩니다."}, -- The Mind
	{"334", "육체", "↑ {{Heart}}최대 체력 +3"}, -- The Body
	{"335", "영혼", "↑ {{SoulHeart}}소울하트 +2#적의 탄환이 캐릭터를 피해갑니다."}, -- The Soul
	{"336", "죽은 양파", "↑ {{RangeSmall}}사거리 +0.25#↓ 눈물 높이 -0.5#↓ {{ShotspeedSmall}}탄속 -0.4#↑ {{TearsizeSmall}}눈물크기 x1.5#공격이 적과 장애물을 관통합니다."}, -- Dead Onion
	{"337", "부서진 시계", "4번째 방마다 그 방의 적이 느려지거나;#!!! 느려지는 대신 13%의 확률로 그 방의 적이 빨라집니다."}, -- Broken Watch
	{"338", "부메랑", "사용 후 공격방향으로 부메랑을 던집니다.#{{Petrify}} 부메랑에 맞은 적에게 공격력 x2의 피해를 주며 2초간 멈추게 만듭니다."}, -- The Boomerang
	{"339", "안전핀", "↑ {{BlackHeart}}블랙하트 +1#↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5#↑ {{ShotspeedSmall}}탄속 +0.16"}, -- Safety Pin
	{"340", "카페인 정", "↑ {{SpeedSmall}}이동속도 +0.3#{{Pill}} 알약을 1개 획득합니다.#캐릭터의 크기가 작아집니다."}, -- Caffeine Pill
	{"341", "찢어진 사진", "↑ {{TearsSmall}}연사 +0.7#↑ {{ShotspeedSmall}}탄속 +0.16"}, -- Torn Photo
	{"342", "파란 환각버섯", "↑ {{Heart}}최대 체력 +1#↑ {{TearsSmall}}연사 +0.7#↓ {{ShotspeedSmall}}탄속 -0.16"}, -- Blue Cap
	{"343", "현관 열쇠", "↑ {{SoulHeart}}소울하트 +1#↑ {{LuckSmall}}행운 +1#{{Key}} 열쇠를 2개 드랍합니다."}, -- Latch Key
	{"344", "종이 성냥", "↑ {{BlackHeart}}블랙하트 +1#{{Bomb}} 폭탄을 3개 드랍합니다."}, -- Match Book
	{"345", "합성 스테로이드", "↑ {{DamageSmall}}공격력 +1#↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5"}, -- Synthoil
	{"346", "과자", "↑ {{Heart}}최대 체력 +1"}, -- A Snack
	{"347", "복시", "사용 시 장신구를 제외한 그 방의 아이템과 픽업을 2배로 복사합니다."}, -- Diplopia
	{"348", "위약", "{{Pill}} 사용 시 가장 앞면에 소지중인 알약의 효과를 발동합니다."}, -- Placebo
	{"349", "나무 동전", "{{Coin}} 사용 시 56% 확률로 동전을 하나 드랍합니다."}, -- Wooden Nickel
	{"350", "독성 쇼크", "{{Poison}} 방 입장 시 그 방의 적에게 공격력 x2의 피해를 줍니다.#적 처치 시 초록 장판이 생깁니다.#장판은 지상의 적에게 초당 30의 피해를 줍니다."}, -- Toxic Shock
	{"351", "대빵 큰 콩", "{{Petrify}} 사용 시 그 방의 적을 2초간 석화시키며 바라보는 방향으로 충격파를 발사합니다."}, -- Mega Bean
	{"352", "유리 대포", "사용 시 전체 체력이 반칸이 되며 장애물을 관통하는 (공격력 +1) x10의 눈물을 발사합니다."}, -- Glass Cannon
	{"353", "봄버맨", "↑ {{Bomb}}폭탄 +5#폭탄의 범위가 십자방향으로 두칸 증가합니다."}, -- Bomber Boy
	{"354", "식품 완구", "↑ {{Heart}}최대 체력 +1#장신구를 하나 드랍합니다."}, -- Crack Jacks
	{"355", "엄마의 진주목걸이", "↑ {{RangeSmall}}사거리 +1.25#↑ 눈물 높이 +0.5#↑ {{LuckSmall}}행운 +1"}, -- Mom's Pearls
	{"356", "자동차 건전지", "액티브 아이템 사용 시 효과가 두번 발동됩니다."}, -- Car Battery
	{"357", "친구 상자", "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} 소지중인 패밀리어를 복사합니다.#{{ArrowGrayRight}} {{Collectible113}}복사할 수 있는 패밀리어가 없다면 그 방에서 Demon Baby 패밀리어를 소환합니다."}, -- Box of Friends
	{"358", "법사", "공격이 2발로 나가며 각각 대각선으로 나갑니다.#공격이 장애물을 관통합니다."}, -- The Wiz
	{"359", "8인치 대못", "↑ {{DamageSmall}}공격력 +1.5#공격이 적을 더 강하게 밀쳐냅니다."}, -- 8 Inch Nails
	{"360", "인큐버스", "공격방향으로 캐릭터의 공격과 같은 공격을 발사합니다."}, -- Incubus
	{"361", "운명의 보상", "공격방향으로 캐릭터의 눈물과 같은 눈물을 발사합니다."}, -- Fate's Reward
	{"362", "꼬마 상자", "방 클리어 시 35% 확률로 픽업 또는 10% 확률로 장신구를 드랍합니다."}, -- Lil Chest
	{"363", "맹세한 수호자", "캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#접촉한 적에게 초당 105의 피해를 줍니다.#{{EternalHeart}} 그 방에서 탄환 10회 방어시 이터널하트를 하나 드랍합니다."}, -- Sworn Protector
	{"364", "사랑과 우정 사이", "캐릭터 주변을 돌며 접촉하는 적에게 초당 45의 피해를 줍니다."}, -- Friend Zone
	{"365", "길잃은 파리", "벽과 장애물 둘레를 돌며 접촉하는 적에게 초당 105의 피해를 줍니다."}, -- Lost Fly
	{"366", "분산형 폭탄", "↑ {{Bomb}}폭탄 +5#폭탄이 터지면 작은 폭탄 2~4개가 나와 한번 더 폭발합니다."}, -- Scatter Bombs
	{"367", "끈끈이 폭탄", "↑ {{Bomb}}폭탄 +5#폭탄이 적에게 접촉 시 달라붙으며 해당 폭탄으로 달라붙은 적을 처치 시 파란 아군 거미 2~5마리를 소환합니다."}, -- Sticky Bombs
	{"368", "유루증", "눈물을 한 방향으로만 발사 시 {{TearsSmall}}연사가 지속적으로 증가합니다."}, -- Epiphora
	{"369", "연속체", "↑ {{RangeSmall}}사거리 +2.25#↑ 눈물 높이 +1.5#공격이 장애물을 관통합니다.#공격이 벽 바깥으로 나갈시 반대편 벽으로 이어서 발사됩니다."}, -- Continuum
	{"370", "돌리 씨", "↑ {{TearsSmall}}연사 +0.7#↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5#{{UnknownHeart}} {{Heart}}빨간하트, {{SoulHeart}}소울하트, {{BlackHeart}}블랙하트 중 3개를 랜덤하게 드랍합니다."}, -- Mr. Dolly
	{"371", "탑의 저주", "피격 시 방 안에 트롤폭탄 6개를 생성합니다.#트롤폭탄은 캐릭터의 폭탄 아이템의 영향을 받습니다."}, -- Curse of the Tower
	{"372", "충전지 아기", "방안에 적이 있을 때 30초마다 랜덤으로:#{{ArrowGrayRight}} 배터리 픽업을 드랍하거나(최대 2회);#{{ArrowGrayRight}} 액티브 아이템의 충전량을 한칸 채워주거나(최대 2회);#{{ArrowGrayRight}} {{Petrify}} 그 방의 적을 2초간 석화 상태로 만듭니다."}, -- Charged Baby
	{"373", "명사수의 눈", "눈물이 적에게 명중할 때마다 {{DamageSmall}}공격력이 +25%씩 최대 2배까지 증가합니다.#눈물이 빗나갈 시 일정 확률로 공격력 증가치가 초기화 됩니다."}, -- Dead Eye
	{"374", "신성한 빛", "10%의 확률로 적에게 명중 시 공격력 x4의 빛줄기가 떨어지는 공격이 나갑니다.#{{LuckSmall}} 행운 9 이상일 때 50% 확률"}, -- Holy Light
	{"375", "호스트 모자", "폭발 공격에 피해를 입지 않습니다.#적 탄환에 맞았을 때 25% 확률로 피해를 무시하며 캐릭터의 눈물과 같은 눈물을 3발 발사합니다."}, -- Host Hat
	{"376", "재입고", "랜덤 픽업을 3개 드랍합니다.#{{Shop}}상점에서 물건 구매 시 같은 종류의 아이템이 재입고됩니다."}, -- Restock
	{"377", "터진 알주머니", "거미류 적들이 공격하지 않거나 약해집니다."}, -- Bursting Sack
	{"378", "똥싸개", "공격키를 3초간 누르고 있을시 캐릭터의 자리에 똥폭탄이 생성됩니다."}, -- No. 2
	{"379", "두개의 눈동자", "↑ {{TearsizeSmall}}눈물크기 x2#공격이 장애물을 관통합니다."}, -- Pupula Duplex
	{"380", "정액제", "↑ {{Coin}}동전 +5#열쇠를 소모하는 문을 열때 동전을 대신 소모합니다."}, -- Pay To Play
	{"381", "에덴의 축복", "↑ {{TearsSmall}}연사 +0.7#다음 게임에서 랜덤 아이템을 하나 들고 시작합니다.#{{Blank}} {{ColorGray}}(최대 10개)"}, -- Eden's Blessing
	{"382", "익숙한 공", "사용 시 공격방향으로 몬스터볼을 던집니다.#{{Friendly}} 몬스터볼에 맞은 적은 포획되며 다음 사용 시 아군 상태로 소환됩니다."}, -- Friendly Ball
	{"383", "눈물 기폭제", "사용 시 그 방의 눈물이 6갈래로 분열합니다."}, -- Tear Detonator
	{"384", "꼬마 거디", "{{Chargeable}} 공격키를 누르고 있는 동안 충전되며 공격키를 떼면 공격했던 방향으로 돌진해 벽에 튕겨다니며 적을 공격하며 이동 속도에 따라 5~90의 피해를 줍니다."}, -- Lil Gurdy
	{"385", "범보", "방 안을 돌아다니며 동전을 먹으며 일정 개수 이상 먹으면 성장합니다.#{{ArrowGrayRight}} 1단계({{Coin}}~5): X#{{ArrowGrayRight}} 2단계({{Coin}}6~11): 방 클리어 시 때때로 픽업을 드랍합니다.#{{ArrowGrayRight}} 3단계({{Coin}}12~23): 적에게 공격력 3.5의 일정 확률로 맞추면 동전을 드랍하는 눈물을 발사합니다.#{{ArrowGrayRight}} 4단계({{Coin}}24~): 적을 따라다녀 접촉한 적에게 초당 37.5의 피해를 주며 {{ColorOrange}}때때로 {{Bomb}}폭탄을 설치합니다.{{CR}}"}, -- Bumbo
	{"386", "12면 주사위", "사용 시 그 방의 장애물을 바꿉니다."}, -- D12
	{"387", "향로", "오라를 가지고 캐릭터를 따라다닙니다.#{{Slow}} 오라 안에 들어온 적과 탄환을 느려지게 합니다."}, -- Censer
	{"388", "열쇠 거지", "방 안을 돌아다니며 열쇠를 먹습니다.#{{Chest}} 일정 개수 이상 먹으면 랜덤 상자를 드랍합니다."}, -- Key Bum
	{"389", "룬 가방", "{{Rune}} 방 5~6개 클리어 시 룬을 하나 드랍합니다."}, -- Rune Bag
	{"390", "세라핌", "공격방향으로 공격력 10의 유도 눈물을 발사합니다."}, -- Seraphim
	{"391", "배신", "{{Charm}} 피격 시 그 방의 적을 5초간 매혹시킵니다."}, -- Betrayal
	{"392", "황도궁", "스테이지마다 랜덤 별자리 아이템의 효과를 가집니다."}, -- Zodiac
	{"393", "독뱀의 키스", "{{Poison}} 15%의 확률로 적을 중독시키는 공격이 나갑니다.#{{BlackHeart}} 중독된 적이 죽을때 20% 확률로 블랙하트가 드랍됩니다."}, -- Serpent's Kiss
	{"394", "조준", "↑ {{TearsSmall}}연사 +0.7#↑ {{RangeSmall}}사거리 +3.15#↑ 눈물 높이 +0.3#조준점을 조종할 수 있으며 자동으로 조준점이 있는 방향을 향해 눈물을 발사합니다."}, -- Marked
	{"395", "기계 X", "{{Chargeable}} 공격이 충전형 레이저 고리 공격으로 변경됩니다.#레이저는 사거리 제한이 없으며 적과 장애물을 관통합니다."}, -- Tech X
	{"396", "심실 절단기", "사용 시 파란 포탈과 주황 포탈을 번갈아 생성합니다.#각 포탈로 입장하면 다른쪽 포탈로 나올 수 있습니다."}, -- Ventricle Razor
	{"397", "조종 광선", "↑ {{TearsSmall}}연사 +0.5#↑ {{RangeSmall}}사거리 +5.25#↑ {{ShotspeedSmall}}탄속 +0.16#눈물이 캐릭터가 바라보는 방향의 일직선으로만 나갑니다."}, -- Tractor Beam
	{"398", "신의 살점", "{{Shrink}} 10%의 확률로 적을 작아지게 만드는 공격이 나갑니다.#작아진 적은 밟아 죽일 수 있습니다."}, -- God's Flesh
	{"399", "공허의 구렁텅이", "↑ {{DamageSmall}}공격력 +1#{{Chargeable}} 공격키를 2.5초 이상 누르면 충전되며 공격키를 떼면 캐릭터 주위에 검은 고리가 둘러져 접촉한 적에게 최대 공격력 x30의 피해를 줍니다.#고리로 적 처치 시 5% 확률로 {{BlackHeart}}블랙하트를 드랍합니다."}, -- Maw Of The Void
	{"400", "운명의 창", "캐릭터의 정면에 창이 생깁니다.#{{Fear}} 창은 적에게 공격력 x2의 피해를 주며 캐릭터에게서 도망가게 합니다."}, -- Spear Of Destiny
	{"401", "폭발물", "25%의 확률로 접착 눈물이 나갑니다.#접착 눈물이 적에게 붙을 시 몇초 후 폭발하여 60의 피해를 줍니다."}, -- Explosivo
	{"402", "혼돈", "픽업을 1~6개 드랍합니다.#등장 아이템의 방 배열 구분이 사라집니다."}, -- Chaos
	{"403", "스파이더모드", "방 안을 돌아다니며 접촉한 적에게 랜덤 상태이상을 부여합니다.#적의 체력과 적에게 주는 피해량이 수치로 표시됩니다.#방 클리어 시 일정 확률로 배터리 픽업이나 자폭 거미를 드랍합니다."}, -- Spider Mod
	{"404", "방귀쟁이 아기", "캐릭터를 따라다니며 적의 탄환을 막아줍니다.#탄환을 막을 시 10% 확률로 랜덤 효과의 방귀를 뀝니다."}, -- Farting Baby
	{"405", "게임 버그", "대각선으로 돌아다니며 접촉한 적에게 초당 120의 피해를 주며 랜덤 상태이상을 부여합니다."}, -- GB Bug
	{"406", "8면 주사위", "{{ArrowUpDown}} 사용 시 {{DamageSmall}}공격력, {{TearsSmall}}연사, {{RangeSmall}}사거리, {{SpeedSmall}}이동속도 배율을 랜덤으로 바꿉니다.#!!! 바뀐 배율의 총합은 항상 동일합니다."}, -- D8
	{"407", "순도", "캐릭터 머리에 오라가 생기며 오라 색에 따라 특정 능력치가 증가합니다.#피격시 비활성화되며 방 이동시 다른 색으로 변합니다.#{{ArrowGrayRight}} {{ColorRed}}빨강:{{CR}} {{DamageSmall}}공격력 +4.0#{{Blank}} {{ColorCyan}}파랑:{{CR}} {{TearsSmall}}눈물 딜레이 -4#{{Blank}} {{ColorOrange}}주황:{{CR}} {{RangeSmall}}사거리 +7.5, 눈물 높이 +1#{{Blank}} {{ColorYellow}}노랑:{{CR}} {{SpeedSmall}}이동속도 +0.5"}, -- Purity
	{"408", "마법 단검", "피격 시 캐릭터 주위에 검은 고리가 둘러져 접촉한 적에게 최대 공격력 x30의 피해를 줍니다.#고리로 적 처치 시 15% 확률로 {{BlackHeart}}블랙하트를 드랍합니다."}, -- Athame
	{"409", "빈 그릇", "↑ {{BlackHeart}}블랙하트 +2#{{EmptyHeart}}빨간하트가 없을 때 비행 능력을 얻으며 40초마다 10초간 무적 상태가 됩니다."}, -- Empty Vessel
	{"410", "악마의 눈", "공격 시 3.33%의 확률로 매우 느린 푸른 눈을 발사합니다.#{{ArrowGrayRight}} 눈은 날아가면서 캐릭터의 공격방향으로 캐릭터의 눈물 효과와 같은 눈물을 발사합니다.#{{LuckSmall}} 행운 20 이상일 때 10% 확률"}, -- Evil Eye
	{"411", "욕망의 피", "적 처치 시 그 방에서;#{{ArrowGrayRight}} {{DamageSmall}}공격력 +0.5(최대 +5)"}, -- Lusty Blood
	{"412", "몽마의 자식들", "15/30/60/90회 피격 시:#{{ArrowGrayRight}} {{NoLB}}악마류 패밀리어를 영구적으로 소환합니다. (최대 4마리)"}, -- Cambion Conception
	{"413", "원죄없는 잉태", "{{Heart}} 하트류 픽업 15회 획득 시마다:#{{ArrowGrayRight}} {{NoLB}}천사류 패밀리어를 영구적으로 소환합니다.(최대 5)#{{ArrowGrayRight}} {{SoulHeart}}소울하트를 하나 드랍합니다."}, -- Immaculate Conception
	{"414", "더 많은 선택권", "{{TreasureRoom}} 보물방 아이템이 2개가 나오며 하나를 선택하면 나머지는 사라집니다."}, -- More Options
	{"415", "빛의 왕관", "↑ {{SoulHeart}}소울하트 +2#최대 체력이 모두 차있거나 빨간하트가 없을 때:#↑ {{DamageSmall}}공격력 배율 x2#↑ {{RangeSmall}}사거리 +5.25#↑ 눈물 높이 +0.5#↓ {{ShotspeedSmall}}탄속 -0.3#피격 시 그 방에서 비활성화됩니다."}, -- Crown Of Light
	{"416", "넓은 가방", "카드 또는 알약을 2개 들 수 있습니다.#카드/알약은 {{ButtonRT}}버튼으로 교체할 수 있습니다."}, -- Deep Pockets
	{"417", "서큐버스", "오라를 가지고 대각선으로 이동하며 오라 안에 들어온 적에게 초당 공격력의 129%의 피해를 입히고, 캐릭터가 들어오면 {{DamageSmall}}공격력을 x1.5 증가시켜줍니다."}, -- Succubus
	{"418", "과일 케이크", "눈물을 발사할 때마다 눈물의 효과가 바뀝니다."}, -- Fruit Cake
	{"419", "순간이동 2.0", "사용 시 가보지 않은 방들 중 하나로 정해진 우선순위에 따라서 순간이동합니다.#!!! 순서: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}> {{ErrorRoom}}오류방"}, -- Teleport 2.0
	{"420", "검은 가루", "캐릭터가 지나간 곳에 검은 가루가 남으며;#{{ArrowGrayRight}} 가루로 원을 그리면 마법진이 생성됩니다.#마법진 위의 적에게 틱당 10의 피해를 줍니다."}, -- Black Powder
	{"421", "강낭콩", "{{Charm}} 사용 시 매혹 방귀를 뀌며 주변의 적에게 5의 피해를 줍니다."}, -- Kidney Bean
	{"422", "빛나는 모래시계", "사용 시 모든 상태를 이전 방의 시점으로 시간을 되돌립니다."}, -- Glowing Hour Glass
	{"423", "보호의 고리", "캐릭터 주위에 하얀 고리가 둘러집니다.#고리에 접촉하는 적에게 초당 캐릭터의 공격력 x1.0만큼의 피해를 줍니다.#탄환이 고리에 접촉할 시 확률적으로 유도 반사탄을 발사합니다."}, -- Circle of Protection
	{"424", "자루 머리", "{{GrabBag}} 자루를 하나 드랍합니다.#{{GrabBag}} 특정 픽업을 일정 확률로 픽업 자루로 바꿉니다.#!!! {{NoLB}}픽업 대체 확률({{ColorRed}}고정 드랍 포함{{CR}}):#{{Coin}} {{NoLB}}동전: 10%#{{Key}} {{NoLB}}열쇠: 20%#{{Bomb}} {{NoLB}}폭탄: 20%(방 클리어 트롤 폭탄 포함)#{{Card}} {{NoLB}}카드/룬: 20%#{{Battery}} {{NoLB}}배터리: 20%"}, -- Sack Head
	{"425", "손전등", "캐릭터의 몸통이 바라보는 방향으로 손전등을 비춥니다.#{{Slow}} 빛 안에 들어온 적이나 탄환을 둔화시킵니다."}, -- Night Light
	{"426", "집착하는 추종자", "캐릭터가 지나간 길을 3초 후 따라갑니다.#접촉한 적에게 초당 30의 피해를 줍니다."}, -- Obsessed Fan
	{"427", "마인크래프터", "사용 시 이동식 TNT를 생성합니다."}, -- Mine Crafter
	{"428", "잠옷", "↑ {{SoulHeart}}소울하트 +4#{{HealingRed}} 체력을 모두 회복합니다."}, -- PJs
	{"429", "키퍼의 머리", "{{Coin}} 공격 명중 시 5% 확률로 동전을 드랍합니다."}, -- Head of the Keeper
	{"430", "파리 아저씨", "캐릭터가 지나간 길을 1초 후 따라갑니다.#근처의 적에게 캐릭터의 공격력과 같은 눈물을 발사합니다."}, -- Papa Fly
	{"431", "다차원 아기", "캐릭터가 지나간 길을 2초 후 따라갑니다.#눈물이 통과하면 2개로 복제되어 나갑니다."}, -- Multidimensional Baby
	{"432", "반짝이 폭탄", "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때 25%의 확률로 랜덤 픽업 또는 장신구가 드랍되거나 15%의 확률로 랜덤 적을 {{Charm}}매혹시킵니다."}, -- Glitter Bombs
	{"433", "내 그림자", "피격 시 그 방의 적을 {{Fear}}도망가게 하며 초당 5의 피해를 주는 검은색 아군 애벌레를 소환합니다."}, -- My Shadow
	{"434", "파리 담은 병", "적 처치 시 병에 파리가 저장됩니다. (최대 20)#사용 시 저장된 파리 수 만큼 파란 아군 파리를 소환합니다."}, -- Jar of Flies
	{"435", "꼬마 로키", "공격력 3.5의 눈물을 4갈래로 발사합니다."}, -- Lil Loki
	{"436", "우유!", "피격 시 그 방에서 {{TearsSmall}}연사 +0.3"}, -- Milk!
	{"437", "7면체 주사위", "사용 시 그 방을 다시 시작하며, 방 클리어 시 이전과 다른 보상이 드랍됩니다."}, -- D7
	{"438", "쪽쪽이", "↑ {{SoulHeart}}소울하트 +1#↑ {{TearsSmall}}연사 +0.7#캐릭터의 크기가 작아집니다."}, -- Binky
	{"439", "엄마의 상자", "사용 시 랜덤 장신구를 하나 드랍합니다.#소지중일 때 {{LuckSmall}}행운이 1 증가하며 들고있는 장신구의 효과가 2배 증가합니다."}, -- Mom's Box
	{"440", "신장 결석", "↓ {{RangeSmall}}사거리 -17#↓ {{SpeedSmall}}최대 이동속도 -0.2#공격중에 때때로 충전이 진행되고 충전이 끝났을 때 공격키를 떼면 {{TearsSmall}}연사가 최대가 되며 눈물을 한번에 발사합니다."}, -- Kidney Stone
	{"441", "메가 블래스트", "사용 시 15초 동안 공격력 x5의 대형 혈사포를 발사합니다."}, -- Mega Blast
	{"442", "암흑 왕자의 왕관", "{{Heart}}빨간하트가 1칸일 때 {{TearsSmall}}연사 +0.7, {{RangeSmall}}사거리 +1.5, 눈물 높이 +1, {{ShotspeedSmall}}탄속 +0.2"}, -- Dark Princes Crown
	{"443", "사과!", "↑ {{TearsSmall}}연사 +0.3#6.66% 확률로 공격력 x4의 공격이 나갑니다.#{{LuckSmall}} 행운 14 이상일 때 100% 확률"}, -- Apple!
	{"444", "연필", "눈물을 15번 발사할 때마다 공격력 x2의 눈물 다발이 나갑니다."}, -- Lead Pencil
	{"445", "개 이빨", "↑ {{DamageSmall}}공격력 +0.3#↑ {{SpeedSmall}}이동속도 +0.1#방에 {{SecretRoom}}{{SuperSecretRoom}}비밀방이나 {{LadderRoom}}사다리방이 연결되어 있을 경우 개 울음소리가 납니다."}, -- Dog Tooth
	{"446", "죽은 이빨", "{{Poison}} 공격 시 캐릭터 주위에 적을 중독시키는 독가스가 나옵니다."}, -- Dead Tooth
	{"447", "납작한 콩", "7.5초동안 공격을 멈추지 않고 공격을 유지할 시 그 방에서 15초동안 유지되는 갈색 구름이 생성되며;#구름에 닿은 적은 공격력 x5의 피해를 줍니다."}, -- Linger Bean
	{"448", "유리 조각", "피격 시 25% 확률로 {{Heart}}빨간하트가 드랍되며;#10%의 확률로 그 방에서 캐릭터가 지나간 자리에 빨간 장판이 생깁니다.#장판은 지상의 적에게 초당 6의 피해를 줍니다."}, -- Shard of Glass
	{"449", "강철판", "↑ {{SoulHeart}}소울하트 +1#적 탄환에 맞았을 때 25%의 확률로 유도 반사탄을 발사합니다."}, -- Metal Plate
	{"450", "탐욕의 눈", "{{Petrify}} 눈물을 20번 발사할 때마다 {{ColorYellow}}동전을 1개 소모하고{{CR}} 캐릭터의 공격력 x2의 피해를 주며 적을 멈추게 만드는 눈물을 발사합니다.#멈춘 적 처치 시 {{Coin}}동전을 1~4개 드랍합니다."}, -- Eye of Greed
	{"451", "타로 천", "{{Card}}카드 또는 {{Rune}}룬을 하나 드랍합니다.#카드 또는 룬 사용 시 효과가 두번 발동합니다."}, -- Tarot Cloth
	{"452", "정맥류", "피격 시 캐릭터 기준 10방향으로 공격력 +25의 눈물을 발사합니다."}, -- Varicose Veins
	{"453", "복합 골절", "↑ {{RangeSmall}}사거리 +1.5#↑ 눈물 높이 +1#눈물이 무언가에 부딪힐 때 1~3갈래로 갈라집니다."}, -- Compound Fracture
	{"454", "다지증", "{{Card}}카드 또는 {{Pill}}알약을 하나 드랍합니다.#카드 또는 알약을 2개 들 수 있습니다.#카드/알약은 {{ButtonRT}}버튼으로 교체할 수 있습니다."}, -- Polydactyly
	{"455", "아빠의 잃어버린 동전", "↑ {{RangeSmall}}사거리 +1.5#↑ 눈물 높이 +1#{{Coin}} 행운 동전을 하나 드랍합니다."}, -- Dad's Lost Coin
	{"456", "곰팡이 핀 빵", "↑ {{Heart}}최대 체력 +1"}, -- Moldy Bread
	{"457", "콘헤드", "↑ {{SoulHeart}}소울하트 +1#피격 시 20% 확률로 피해를 무시합니다."}, -- Cone Head
	{"458", "배꼽", "장신구를 하나 드랍합니다.#장신구를 두개 들 수 있습니다."}, -- Belly Button
	{"459", "축농증", "20%의 확률로 접착 눈물이 나가며 접착 눈물이 적에게 붙을 시 60초동안 지속 피해를 줍니다."}, -- Sinus Infection
	{"460", "녹내장", "{{Confusion}} 5%의 확률로 적을 혼란하게 하는 공격이 나갑니다.#해당 혼란은 풀리지 않으며 보스의 경우 일반적인 혼란보다 더 깁니다.#화면이 조금 어두워집니다."}, -- Glaucoma
	{"461", "기생자", "15%의 확률로 알주머니 눈물이 나갑니다.#알주머니 명중 시 파란 아군 거미 또는 파리를 소환합니다.#{{LuckSmall}} 행운 5 이상일 때 50% 확률"}, -- Parasitoid
	{"462", "벨리알의 눈", "↑ {{RangeSmall}}사거리 +1.5#↑ 눈물 높이 +1#눈물이 적을 관통하며 관통한 눈물은 적에게 유도되고 공격력이 2배 증가합니다."}, -- Eye of Belial
	{"463", "황산", "↑ {{DamageSmall}}공격력 +0.3#25%의 확률로 오브젝트를 부수는 눈물이 나갑니다."}, -- Sulfuric Acid
	{"464", "균형의 문장", "↑ {{SoulHeart}}소울하트 +2#소지중인 픽업의 개수에 따라 챔피언 적이 드랍하는 보상이 달라집니다."}, -- Glyph of Balance
	{"465", "아날로그 스틱", "↑ {{TearsSmall}}연사 +0.3#공격을 360도로 발사할 수 있습니다.#{{Blank}} (키보드: 8방향으로 발사 가능)"}, -- Analog Stick
	{"466", "전염병", "{{Poison}} 방에서 처음 죽은 적은 독가스를 뀌며 독가스에 맞은 적은 감염됩니다.#감염된 적은 죽을 때 다시 독가스를 뀝니다."}, -- Contagion
	{"467", "손가락!", "캐릭터의 전방을 가리킵니다.#가리킨 방향에 있는 적에게 공격력의 10%의 지속 피해를 줍니다."}, -- Finger!
	{"468", "셰이드", "캐릭터가 지나간 길을 1초 후 따라옵니다.#접촉한 적에게 초당 30의 피해를 줍니다.#{{Friendly}} 600의 피해를 주면 캐릭터에게 흡수되며 접촉 피해량 증가 + 접촉 시 아군 Charger 소환"}, -- Shade
	{"469", "우울증", "캐릭터를 따라다니며 지나간 자리에 파란 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다.#적이 구름에 닿으면 확률적으로 빛줄기가 나와 적에게 공격력 +20의 피해를 줍니다."}, -- Depression
	{"470", "허쉬", "대각선으로 이동하며 접촉하는 적에게 초당 30의 피해를 줍니다.#공격키를 누르고 있으면 움직이지 않습니다."}, -- Hushy
	{"471", "꼬마 몬스트로", "{{Chargeable}} 공격방향으로 공격력 3.5의 눈물다발을 충전하여 발사합니다."}, -- Lil Monstro
	{"472", "아기 왕", "캐릭터를 따라다니며 공격키를 누르고 있으면 움직이지 않습니다.#다른 패밀리어들이 이 패밀리어를 기준으로 이동합니다."}, -- King Baby
	{"473", "커다란 처비", "공격방향으로 느리게 돌진합니다.#접촉하는 적에게 초당 40.5의 피해를 줍니다."}, -- Big Chubby
	{"474", "편도선", "."}, -- Tonsil
	{"475", "플랜 C", "사용 시 그 방의 적에게 9,999,999의 피해를 주며 {{ColorRed}}3초 후 사망합니다{{CR}}."}, -- Plan C
	{"476", "1면 주사위", "사용 시 그 방의 픽업 중 하나를 복사합니다."}, -- D1
	{"477", "공허", "사용 시 그 방의 아이템을 흡수합니다.#액티브 흡수와 동시에, 그리고 아이템을 사용할 때마다 흡수한 액티브의 효과가 발동됩니다.#패시브 흡수 시 랜덤 능력치가 2개 증가합니다."}, -- Void
	{"478", "일시정지", "사용 시 그 방의 적의 움직임이 30초간 멈춥니다.#공격키를 누르면 효과가 풀립니다."}, -- Pause
	{"479", "용광로", "사용 시 소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다.#소지 시 방 클리어 보상이 2%의 확률로 장신구로 바뀝니다."}, -- Smelter
	{"480", "퇴비", "사용 시 그 방의 픽업을 흡수 + 흡수량만큼 파란 아군 파리 및 거미를 소환하며;#{{ArrowGrayRight}} 소지 중인 파란 아군 파리 및 거미를 2배로 늘립니다.#파란 아군 파리 및 거미가 하나도 없을 경우 둘 중 한마리를 소환합니다."}, -- Compost
	{"481", "데이터마이너", "사용 시 그 방에서 능력치가 랜덤으로 증가하거나 감소하며 눈물에 랜덤 효과가 부여됩니다."}, -- Dataminer
	{"482", "클리커", "사용 시 가장 최근에 획득한 패시브 아이템을 제거하고;#{{ArrowGrayRight}} 캐릭터를 다른 랜덤 캐릭터로 바꿉니다."}, -- Clicker
	{"483", "맘마 메가!", "사용 시 그 스테이지에서 방 최초 입장마다 그 방의 적에게 200의 폭발 피해를 줍니다.#사용한 스테이지에서 {{BossRoom}}보스방 {{ColorOrange}}최초 입장 시{{CR}} 보스러시/Blue Womb으로 향하는 문이 열립니다."}, -- Mama Mega!
	{"484", "잠깐 뭐야?", "사용 시 방귀를 뀌며 주변의 적을 더 강하게 밀쳐내고;#{{ArrowGrayRight}} 캐릭터 주위에 충격파를 일으킵니다."}, -- Wait What?
	{"485", "구부러진 동전", "!!! 사용 시 50% 확률로:#{{ArrowGrayRight}} 그 방의 아이템, 픽업을 2배로 복사하거나;#{{ArrowGrayRight}} 아이템, 픽업을 모두 없애고 동전을 1개 드랍합니다."}, -- Crooked Penny
	{"486", "무딘 면도칼", "사용 시 피해를 입지 않고 피격 시 발동 효과를 발동합니다."}, -- Dull Razor
	{"487", "감자칼", "!!! {{NoLB}}사용 시 {{EmptyHeart}} 최대 체력 1칸을 깎으며 이하의 피격 효과 발동:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +0.2#{{ArrowGrayRight}} {{Collectible73}}Cube of Meat +1#{{Timer}} 그 방에서:#{{ArrowGrayRight}} {{RangeSmall}}사거리 +5#{{ArrowGrayRight}} 캐릭터가 지나간 자리에 빨간 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다."}, -- Potato Peeler
	{"488", "메트로놈", "{{Timer}} 사용 시 그 방에서:#랜덤 아이템 효과를 발동합니다."}, -- Metronome
	{"489", "무한 주사위", "사용 할 때마다 랜덤 종류의 주사위로 바뀝니다."}, -- D infinity
	{"490", "에덴의 영혼", "사용 시 그 방의 아이템을 2개 생성합니다."}, -- Eden's Soul
	{"491", "산성 아기", "{{Pill}} 방 3개 클리어 시 알약을 하나 드랍합니다.#{{Poison}} 알약 사용 시 그 방의 적을 1초간 중독시킵니다."}, -- Acid Baby
	{"492", "", "↑ {{LuckSmall}}행운 +1#방 안에 {{SecretRoom}}{{SuperSecretRoom}}비밀방, 색돌, {{LadderRoom}}사다리방이 있는 위치로 날아갑니다."}, -- YO LISTEN!
	{"493", "아드레날린", "{{EmptyHeart}}빈 최대 체력 한칸 당 {{DamageSmall}}공격력 +0.2"}, -- Adrenaline
	{"494", "야곱의 사다리", "눈물이 무언가에 부딪힐 때마다 1~2개의 유도 레이저가 발사됩니다."}, -- Jacob's Ladder
	{"495", "고스트 페퍼", "공격 시 확률적으로 최대 공격력 125의 지속 불꽃을 날립니다."}, -- Ghost Pepper
	{"496", "안락사", "3.33%의 확률로 적을 즉사시키며 눈물이 10방향으로 퍼지는 눈물이 나갑니다.#{{LuckSmall}} 행운 15 이상일 때 100% 확률"}, -- Euthanasia
	{"497", "위장 속옷", "방 입장 시 그 방의 적들이 혼란에 걸립니다.#공격키를 누르면 효과가 풀립니다."}, -- Camo Undies
	{"498", "이중성", "{{AngelDevilChanceSmall}} 악마방 등장 시 천사방이 함께 등장하며 두 방 중 한곳을 선택할 수 있습니다."}, -- Duality
	{"499", "성찬", "{{AngelChanceSmall}} 악마 거래 여부와 무관하게 천사방 등장 확률이 100%로 고정됩니다."}, -- Eucharist
	{"500", "자루 주머니", "{{GrabBag}} 방 5~6개 클리어 시 픽업 자루를 드랍합니다."}, -- Sack of Sacks
	{"501", "탐욕의 식도", "동전 25개 당 {{EmptyHeart}}빈 최대 체력 +1#동전으로 늘어난 체력은 동전 소비 시 사라집니다."}, -- Greed's Gullet
	{"502", "대왕 여드름", "확률적으로 적을 {{Slow}}둔화시키는 공격력 x2의 눈물이 나갑니다."}, -- Large Zit
	{"503", "작은 뿔", "5%의 확률로 적을 즉사시키는 눈물이 나갑니다.#적에게 접촉 시 3.5의 피해를 줍니다."}, -- Little Horn
	{"504", "갈색 너겟", "사용 시 그 자리에서 주위의 적을 공격하는 파란 파리를 소환합니다."}, -- Brown Nugget
	{"505", "포켓 GO", "{{Friendly}} 방 입장 시 20%의 확률로 아래 중 하나의 아군 적을 소환합니다:#{{ArrowGrayRight}} Attack Fly#{{Blank}} Pooter#{{Blank}} One Tooth#{{Blank}} Fat Bat#{{Blank}} Frowning Gaper#{{Blank}} Vis"}, -- Poke Go
	{"506", "배신자", "적을 뒤에서 공격할 시 2배의 피해를 입히고 {{BleedingOut}}출혈 상태로 만듭니다."}, -- BackStabber
	{"507", "날카로운 빨대", "사용 시 그 방의 적에게 눈물 공격력 + 적 체력의 10%의 피해를 줍니다."}, -- Sharp Straw
	{"508", "엄마의 면도칼", "{{BleedingOut}} 캐릭터 주위를 돌며 접촉하는 적에게 초당 공격력 x3의 피해를 출혈 피해를 줍니다."}, -- Mom's Razor
	{"509", "피눈물 눈알", "캐릭터 주위를 돌며 자신이 바라보는 방향으로 공격력 3.5의 눈물을 발사합니다.#접촉하는 적에게 초당 30의 피해를 줍니다."}, -- Bloodshot Eye
	{"510", "정신착란", "{{Timer}} 사용 시 그 방에서:#{{Friendly}} {{DeliriumSmall}} Delirium 버전의 아군 보스를 소환합니다."}, -- Delirious
	{"511", "성난 파리", "적의 주위를 돌면서 접촉하는 적에게 초당 30의 피해를 줍니다."}, -- Angry Fly
	{"512", "블랙홀", "사용 시 공격방향으로 적들을 모두 빨아들여 붙잡아놓는 블랙홀을 소환합니다.#블랙홀은 6초동안 지속되며 주변 장애물들을 모두 파괴합니다."}, -- Black Hole
	{"513", "멍청이", "↑ {{SoulHeart}}소울하트 +1#↑ {{DamageSmall}}공격력 +0.1#일정 확률로 적 하나를 {{Charm}}매혹시키거나 {{Fear}}캐릭터에게서 멀어지게 합니다.#피격 시 확률적으로 무지개똥을 쌉니다."}, -- Bozo
	{"514", "고장난 모뎀", "적과 적의 탄환이 때때로 1초간 멈춥니다.#방 클리어 보상이 25% 확률로 두배로 나옵니다."}, -- Broken Modem
	{"515", "수수께끼의 선물", "사용 시 아래 중 하나를 소환합니다:#{{ArrowGrayRight}} 그 방의 아이템#{{ArrowGrayRight}} {{Collectible132}}A Lump of Coal#{{ArrowGrayRight}} {{Collectible36}}The Poop#{{LuckSmall}} 아이템 소환 확률은 행운 수치에 비례합니다."}, -- Mystery Gift
	{"516", "스프링클러", "사용 시 그 방에 스프링클러를 설치합니다.#스프링클러는 시계방향으로 회전하면서 캐릭터의 공격과 같은 공격을 발사합니다."}, -- Sprinkler
	{"517", "빠른 폭탄", "↑ {{Bomb}}폭탄 +7#폭탄을 설치할 때 지연 없이 빠르게 설치할 수 있습니다."}, -- Fast Bombs
	{"518", "친구 든 상자", "공격방향으로 특수 효과 눈물을 발사합니다.#효과는 스테이지마다 바뀝니다."}, -- Buddy in a Box
	{"519", "꼬마 델리리움", "10초마다 랜덤 패밀리어로 바뀝니다."}, -- Lil Delirium
	{"520", "점퍼 케이블", "적 15기 처치 시 액티브 아이템 충전량을 한칸 충전합니다."}, -- Jumper Cables
	{"521", "쿠폰", "{{Shop}}상점이나 {{DevilRoom}}악마방에서 사용 시 랜덤 상품 하나를 거래없이 얻을 수 있습니다."}, -- Coupon
	{"522", "염동력", "사용 시 3초동안 캐릭터에게 날아오는 적의 탄환을 붙잡습니다.#{{ArrowGrayRight}} 3초가 끝나면 붙잠은 탄환을 다시 되돌려 발사합니다."}, -- Telekinesis
	{"523", "수납상자", "사용 시 그 방의 아이템과 픽업을 상자에 저장합니다.#다음 사용 시 저장했던 아이템들을 드랍합니다."}, -- Moving Box
	{"524", "기계장치 0", "눈물마다 레이저가 연결되며 나갑니다."}, -- Technology Zero
	{"525", "문둥병", "피격 시 캐릭터 주위를 돌며 적의 탄환을 막아줍니다.#접촉한 적에게 초당 35의 피해를 줍니다.#탄환을 일정 개수 이상 막을 시 사라집니다."}, -- Leprosy
	{"526", "7개의 도장", "방을 돌아다니며 접촉한 적에게 피해를 입히고 아군 파리를 소환합니다.#10초마다 모습이 바뀌며 적에게 주는 피해와 소환하는 아군 파리의 종류가 달라집니다."}, -- 7 Seals
	{"527", "미 씨!", "사용 시 조준점으로 목표를 설정합니다.#{{ArrowGrayRight}} 일정 시간 후 유령이 나타나 목표하는 대상에 상호작용합니다."}, -- Mr. ME!
	{"528", "천사빛 프리즘", "캐릭터 주위를 돌며 공격이 통과하면 4갈래로 갈라져 나갑니다."}, -- Angelic Prism
	{"529", "뽁!", "눈물이 체공하며 다른 눈물과 부딪힐 시 서로 튕겨나가며 움직입니다."}, -- Pop!
	{"530", "죽음의 살생부", "{{DeathMark}} 해골마크가 뜬 적을 순차적으로 처치 시 픽업이 드랍되거나 랜덤 능력치가 하나 증가합니다."}, -- Death's List
	{"531", "피눈물병", "↓ {{TearsSmall}}공격 딜레이 x2 +10#공격력 x1.31의 눈물을 포물선으로 발사하며 무언가에 부딪힐 시 파열되어 작은 눈물이 흩어집니다."}, -- Haemolacria
	{"532", "눈물먹이", "눈물이 체공하며 눈물에 눈물이 흡수됩니다.#최대 5번 흡수 시 파열되어 8방향으로 작은 눈물이 발사됩니다."}, -- Lachryphagy
	{"533", "삼성송", "공격이 하얀색 빛줄기 공격으로 변경됩니다.#빛줄기는 적에게 다단히트로 공격력 x0.33의 피해를 주며 적을 관통합니다."}, -- Trisagion
	{"534", "책가방", "액티브 아이템을 두개 들 수 있습니다.#액티브 아이템은 {{ButtonRT}}버튼으로 교체할 수 있습니다."}, -- Schoolbag
	{"535", "담요", "↑ {{SoulHeart}}소울하트 +1#↑ {{HealingRed}}빨간하트 +1#{{HolyMantleSmall}} {{BossRoom}}보스방에서 피격 시 피해를 무시하는 보호막을 1회 제공합니다."}, -- Blanket
	{"536", "희생의 제단", "사용 시 생물 패밀리어를 최대 2마리 제거하고;#{{ArrowGrayRight}} 제거한 패밀리어 수 만큼 {{DevilRoom}}악마방 아이템을 생성합니다."}, -- Sacrificial Altar
	{"537", "꼬마 구토쟁이", "{{Pill}} 획득 시 알약을 하나 드랍합니다.#{{Chargeable}} 공격방향으로 장판을 충전하여 뱉습니다.#장판의 효과는 알약을 사용할 때마다 달라집니다."}, -- Lil Spewer
	{"538", "구슬", "장신구를 3개 드랍합니다.#피격 시 5%의 확률로 소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다."}, -- Marbles
	{"539", "이상한 알", "{{Friendly}} 피격 시 매혹된 아군 적을 소환합니다.#피격당하지 않고 방을 넘어갈수록 소환되는 적이 더욱 강해집니다."}, -- Mystery Egg
	{"540", "납작한 돌", "눈물이 바닥을 튀면서 발사됩니다.#눈물의 최대 사거리가 캐릭터의 사거리보다 40% 더 멀리 나갑니다.#눈물이 튈 때 주변에 있는 적에게 공격력의 25%의 피해를 줍니다."}, -- Flat Stone
	{"541", "골수", "↑ {{EmptyBoneHeart}}뼈하트 +1#{{Heart}} 빨간하트를 3개 드랍합니다."}, -- Marrow
	{"542", "미끄러운 갈비뼈", "캐릭터 주위를 돌며 적의 탄환을 반사합니다."}, -- Slipped Rib
	{"543", "성지", "피격 시 오라를 가진 하얀 똥을 설치합니다.#오라 안에 있을 시 {{TearsSmall}}연사가 2배가 되며 피해를 확률적으로 무시합니다."}, -- Hallowed Ground
	{"544", "날카로운 갈비뼈", "캐릭터가 보는 방향에서 앞뒤로 움직입니다.#접촉하는 적에게 초당 캐릭터의 공격력 x6의 피해를 줍니다."}, -- Pointy Rib
	{"545", "망자의 책", "{{Friendly}} 사용 시 방에서 죽인 적의 수만큼 일회용 뼛조각 배리어를 생성하며 확률적으로 아군 해골 적을 소환합니다. (최대 8)"}, -- Book of the Dead
	{"546", "아빠의 반지", "캐릭터 주위에 작은 고리가 생깁니다.#{{Petrify}} 고리에 닿은 적을 즉시 멈추게 합니다."}, -- Dad's Ring
	{"547", "이혼 서류", "↑ {{EmptyBoneHeart}}뼈하트 +1#↑ {{TearsSmall}}연사 +0.7#{{Trinket21}} Mysterious Paper 장신구를 드랍합니다."}, -- Divorce Papers
	{"548", "턱뼈", "공격한 방향으로 부메랑처럼 날아가며 맞은 적에게 7의 피해를 줍니다.#픽업에 닿을 시 픽업을 가져옵니다."}, -- Jaw Bone
	{"549", "최약골", "↑ {{EmptyBoneHeart}}뼈하트 +6#체력을 모두 제거합니다.#뼈하트 파괴 시 {{TearsSmall}}연사가 0.5 증가합니다."}, -- Brittle Bones
	{"550", "부러진 삽", "!!! 소지 시 일정 간격으로 캐릭터의 위치에 엄마발이 두개씩 떨어지며 20분이 지나도 보스러시 방이 열립니다.#!!! {{MomBossSmall}}Mom 보스 처치 후 반드시 보스러시를 완료해야만 다음 스테이지로 내려갈 수 있습니다.#아이템 사용 시 그 방 및 웨이브에서 엄마발이 떨어지지 않습니다.#!!! 특정 캐릭터 해금에 필요한 아이템입니다.#!!! 경고: 다른 액티브 아이템으로 교체 후 방 이동 시 이 아이템은 사라집니다."}, -- Broken Shovel
	{"551", "부러진 삽", "{{Collectible550}} 부러진 삽 손잡이와 조합:#{{Collectible552}} 조합 후 사용 시 다음 스테이지로 가는 다락문을 생성합니다.#{{Player16}} Dark Room 스테이지의 특정 타일 위에 사용 시 The Forgotten 캐릭터를 해금할 수 있습니다."}, -- Broken Shovel
	{"552", "엄마의 삽", "사용 시 다음 스테이지로 가는 다락문을 생성합니다.#{{Player16}} Dark Room 스테이지의 특정 타일 위에 사용 시 The Forgotten 캐릭터를 해금할 수 있습니다."}, -- Mom's Shovel
}


---------- Modifiers ----------

-- Effect of Car battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "무효과",
	[35] = {40, 80}, -- Necronomicon
	[37] = {"대형 폭탄을 설치합니다.", "대형 폭탄을 2개 설치합니다."}, -- Mr. Boom
	[38] = {10, 20}, --Tammy's Head
	[45] = {"1칸", "2칸"}, -- Yum Heart
	[58] = {10, 20}, -- Book of Shadows
	[65] = {6, 12}, -- Anarchist Cookbook
	[66] = {8, 16}, -- The Hourglass
	[77] = {6, 12}, -- My Little Unicorn
	[78] = {"소울하트 {{BlinkYellowGreen}}+1", "{{CR}}소울하트 {{BlinkYellowGreen}}+2"}, -- Book of Revelations
	[83] = {"+1", "+2"}, -- The Nail
	[85] = {"하나", "2장"}, -- Deck of Cards
	[86] = "{{BlinkYellowGreen}}Monstro가 한 마리 더 떨어집니다.", -- Monstro's Tooth
	[93] = {6.5, 13}, -- The Gamekid
	[97] = {"사용 시 랜덤 픽업을 {{BlinkYellowGreen}}2개{{CR}} 드랍합니다."}, -- The Book of Sin
	[102] = {"하나", "2개"}, -- Mom's Bottle of Pills
	[105] = "!!! {{BlinkYellowRed}}일부 아이템이 배열에서 지워질 수 있음{{CR}}", -- The D6
	[107] = "분리된 몸 추가 생성", -- The Pinking Shears
	[111] = "방귀의 피해량 x2, 효과 지속시간은 연장되지 않음", -- The Bean
	[123] = {"하나", "2명"}, -- Monster Manual
	[124] = {"랜덤 액티브 아이템", "랜덤 액티브 아이템 2개"}, -- Dead Sea Scrolls
	[136] = {"하나", "2개"}, -- Best Friend
	[145] = {"2~4","4~8"}, -- Guppy's Head
	[146] = {"{{EternalHeart}}이터널하트 +1", "{{Heart}}최대 체력 +1"}, -- Prayer Card
	[158] = {"하나", "2개"}, -- Crystal Ball
	[171] = {10, 20}, -- Spider Butt
	[283] = "!!! {{BlinkYellowRed}}일부 아이템이 배열에서 지워질 수 있음{{CR}}", -- D100
	[284] = "!!! {{BlinkYellowRed}}일부 아이템이 배열에서 지워질 수 있음{{CR}}", -- D4
	[286] = {"발동합니다", "2번{{CR}} 발동합니다"}, -- Blank Card
	[288] = {"1~4", "2~8"}, -- Box of Spiders
	[292] = {"+1", "+2"}, -- Satanic Bible
	[293] = "혈사의 피해량 x2", -- Head of Krampus
	[294] = "밀쳐내는 강도가 강해짐", -- Butter Bean
	[298] = {"6", "12"}, -- Unicorn Stump
	[348] = {"발동합니다", "2번{{CR}} 발동합니다"}, --Placebo
	[349] = {"사용 시 59% 확률로 {{Coin}}동전을 하나, {{BlinkYellowGreen}}29%의 확률로 2개 드랍합니다."}, -- Wooden Nickel
	[351] = "방귀의 피해량 x2, 효과 지속시간은 연장되지 않음", -- Mega Bean
	[357] = {"복사합니다", "2번{{CR}} 복사합니다"}, -- Box of Friends
	[383] = {6, 36}, -- Tear Detonator
	[421] = "방귀의 피해량 x2, 효과 지속시간은 연장되지 않음", -- Kidney Bean
	[427] = {"!!! {{BlinkYellowRed}}사용 시 캐릭터의 위치에 폭발을 일으킵니다.{{CR}}"}, -- Mine Crafter
	[437] = "!!! {{BlinkYellowRed}}적을 2배로 소환합니다.{{CR}} (방 클리어 보상이 늘어나지 않음)", -- D7
	[439] = {"하나", "2개"}, -- Mom's Box
	[476] = {"하나", "2개"}, --D1
	[477] = "흡수한 아이템을 2번 발동합니다.", -- Void
	[480] = {"2배", "4배"}, -- Compost
	[481] = {"능력치가", "2개의{{CR}} 능력치가"}, -- Dataminer
	[482] = {"제거하고", "{{BlinkYellowRed}}2개{{CR}} 제거하고", "바꿉니다", "2번{{CR}} 바꿉니다"}, -- Clicker
	[485] = {"50", "{{BlinkYellowRed}}25", "2배", "4배", "1개", "1~2개"}, -- Crooked Penny
	[486] = {"발동합니다", "2번{{CR}} 발동합니다"}, -- Dull Razor
	[487] = {"!!! 사용 시 이하 효과 발동:#최대 체력 {{BlinkYellowGreen}}2칸{{CR}} 제거하고 영구적으로 {{Collectible73}}Cube of Meat를 {{BlinkYellowGreen}}2개{{CR}} 얻으며 {{DamageSmall}}공격력이 {{BlinkYellowGreen}}0.4{{CR}} 증가합니다.#그 방에서 {{RangeSmall}}사거리 +5 증가하며 캐릭터가 지나간 자리에 빨간 장판이 생기며 닿은 적은 초당 6의 피해를 받습니다."}, -- Potato Peeler
	[488] = {"발동합니다", "2개{{CR}} 발동합니다"}, -- Metronome
	[489] = "!!! {{BlinkYellowRed}}랜덤 주사위 아이템을 하나 더 발동합니다.", -- D Infinity
	[504] = {"소환합니다", "2마리{{CR}} 소환합니다"}, -- Brown Nugget
	[507] = {"눈물 공격력 + 적 최대 체력의 10%", "눈물 공격력 x2 + 적 최대 체력의 20%"}, -- Sharp Straw
	[510] = {"소환합니다", "2마리{{CR}} 소환합니다"}, -- Delirious
	[516] = {"소환합니다", "2마리{{CR}} 소환합니다"}, -- Sprinker
	[521] = {"하나", "2개"}, --Coupon
	[523] = "상자의 내용물과 그 방의 아이템/픽업 내용물을 뒤바꿉니다.", -- Moving Box
	[545] = {8, 16}, -- Book of the Dead
	[550] = {"그 방 및 웨이브", "2개{{CR}}의 방 및 웨이브"}, -- Broken Shovel
}

---------- Trinkets ----------
EID.descriptions[languageCode].trinkets={
	{"1", "삼킨 동전", "{{Coin}} 피격 시 동전을 1~2개 드랍합니다."}, -- Swallowed Penny
	{"2", "굳은 똥", "똥 파괴 시 픽업이 드랍될 확률이 50% 증가합니다."}, -- Petrified Poop
	{"3", "AAA 건전지", "방 클리어 시 액티브 아이템의 충전량이 1칸 남았을 경우 액티브를 자동으로 충전합니다."}, -- AAA Battery
	{"4", "고장난 조종기", "{{Collectible44}} 액티브 아이템 사용 시 스테이지 안의 랜덤 방으로 순간이동합니다."}, -- Broken Remote
	{"5", "퍼플 하트 훈장", "!!! 적이 챔피언의 형태로 나올 확률이 2배로 증가합니다.#가능한 경우, 보스가 챔피언의 형태로 나올 확률이 증가합니다."}, -- Purple Heart
	{"6", "깨진 자석", "{{Coin}} 동전이 캐릭터에게 끌려옵니다."}, -- Broken Magnet
	{"7", "묵주 구슬", "↑ {{AngelChanceSmall}}천사방 확률 +50%#!!! {{Library}}책방과 {{Shop}}상점에서 {{Collectible33}}The Bible이 등장할 확률이 증가합니다."}, -- Rosary Bead
	{"8", "카트리지", "{{Collectible93}} 피격 시 5%의 확률로 6.5초간 무적 상태가 되며 접촉한 적에게 40의 피해를 줍니다.#{{LuckSmall}} 행운 38 이상일 때 100% 확률"}, -- Cartridge
	{"9", "파동벌레", "눈물이 커졌다 작아졌다를 반복하며 날아갑니다."}, -- Pulse Worm
	{"10", "씰룩벌레", "↑ {{TearsSmall}}연사 +0.3#눈물이 파동 곡선을 그리며 날아갑니다."}, -- Wiggle Worm
	{"11", "둥글벌레", "눈물이 원을 그리며 날아갑니다."}, -- Ring Worm
	{"12", "납작벌레", "눈물이 50% 납작해진 모양으로 날아갑니다.#눈물이 적을 살짝 강하게 밀쳐냅니다."}, -- Flat Worm
	{"13", "상점 상품권", "!!! 일회용#{{Shop}} 상점에서 아이템 하나를 무료로 구매할 수 있습니다."}, -- Store Credit
	{"14", "굳은살", "가시나 장판에 피해를 입지 않습니다.#!!! 적의 공격으로 생성되는 가시에는 피해를 받습니다."}, -- Callus
	{"15", "행운의 돌조각", "장애물 파괴 시 {{Coin}}동전을 드랍합니다."}, -- Lucky Rock
	{"16", "엄마의 발톱", "2분마다 엄마발이 랜덤 위치에 떨어집니다."}, -- Mom's Toenail
	{"17", "검은 립스틱", "{{BlackHeart}} 블랙하트가 나올 확률이 증가합니다."}, -- Black Lipstick
	{"18", "성경 책자", "{{EternalHeart}} 이터널하트가 나올 확률이 증가합니다."}, -- Bible Tract
	{"19", "종이 클립", "{{GoldenChest}} 황금상자를 열쇠 소모 없이 열 수 있습니다."}, -- Paper Clip
	{"20", "원숭이 손", "{{BlackHeart}} 피격 시 전체 체력이 반칸 남았을때 블랙하트를 하나 드랍합니다.#!!! 3번 드랍 시 사라집니다."}, -- Monkey Paw
	{"21", "신비한 종이", "!!! 피격 시 확률적으로 아래의 장신구 효과 중 하나를 발동합니다:#{{Collectible327}} The Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"}, -- Mysterious Paper
	{"22", "악마 꼬리", "{{Key}} 방 클리어 시 하트가 드랍될 때 80% 확률로 열쇠로 바뀝니다.#↓ 상자에서 하트가 드랍될 확률이 대폭 감소합니다.#{{BlackHeart}} 고정 드랍이 아닌 하트가 드랍될 때 열쇠로 바뀌지 않은 경우 100%의 확률로 블랙하트로 대체됩니다."}, -- Daemon's Tail
	{"23", "실종 포스터", "!!! 일회용#{{Player10}} {{SacrificeRoom}}희생방에서 사망 시 전 방에서 The Lost 캐릭터로 부활함과 동시에 The Lost 캐릭터가 해금됩니다.#The Lost 캐릭터 해금 이후에는 희생방이 아닌 다른 방에서의 사망 시에도 부활합니다."}, -- Missing Poster
	{"24", "똥전", "{{Coin}} 똥 오브젝트에서 동전이 나올 확률이 20% 증가합니다.#동전 획득 시 적을 더 강하게 밀쳐내는 방귀를 뀝니다."}, -- Butt Penny
	{"25", "이상한 초콜릿", "!!! 30초마다 일정 확률로:#{{ArrowGrayRight}} 똥을 싸거나;#{{ArrowGrayRight}} 적을 더 강하게 밀쳐내는 방귀를 뀝니다."}, -- Mysterious Candy
	{"26", "꺾기벌레", "↑ {{RangeSmall}}사거리 +10#눈물이 지그재그로 날아갑니다."}, -- Hook Worm
	{"27", "채찍벌레", "↑ {{ShotspeedSmall}}탄속 +0.5"}, -- Whip Worm
	{"28", "부서진 앙크", "{{Player4}} 사망 시 22% 확률로 전 방에서 ??? 캐릭터로 부활합니다."}, -- Broken Ankh
	{"29", "생선 머리", "피격 시 파란 아군 파리를 소환합니다."}, -- Fish Head
	{"30", "분홍 눈알", "{{Poison}} 10%의 확률로 적을 중독시키는 공격이 나갑니다.#{{LuckSmall}} 행운 18 이상일 때 100% 확률"}, -- Pinky Eye
	{"31", "고정핀", "10%의 확률로 적과 장애물을 관통하는 공격이 나갑니다.#{{LuckSmall}} 행운 18 이상일 때 100% 확률"}, -- Push Pin
	{"32", "환각버섯", "방 입장 시 25% 확률로 그 방에서 랜덤 버섯 아이템 효과를 얻거나 맵에 특수방의 위치가 표시됩니다."}, -- Liberty Cap
	{"33", "탯줄", "{{HalfHeart}} 전체 체력이 빨간하트 반칸일 때 그 방에서 {{Collectible100}}Little Steven을 소환합니다."}, -- Umbilical Cord
	{"34", "아이의 심장", "{{Heart}} 방 클리어 보상이 10% 확률로 하트로 바뀝니다.#{{Heart}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 하트를 추가로 드랍합니다."}, -- Child's Heart
	{"35", "휘어진 뿔", "↑ {{DamageSmall}}공격력 +2"}, -- Curved Horn
	{"36", "녹슨 열쇠", "{{Key}} 방 클리어 보상이 10% 확률로 열쇠로 바뀝니다.#{{Key}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 열쇠를 추가로 드랍합니다."}, -- Rusted Key
	{"37", "염소 발굽", "↑ {{SpeedSmall}}이동속도 +0.15"}, -- Goat Hoof
	{"38", "엄마의 진주", "빨간하트가 드랍될 때 {{SoulHeart}}소울하트, {{BlackHeart}}블랙하트, 혹은 {{EmptyBoneHeart}}뼈하트로 바뀔 확률 +10%p"}, -- Mom's Pearl
	{"39", "암", "↑ {{TearsSmall}}연사 +0.4"}, -- Cancer
	{"40", "빨간 누더기", "피격 시 20%의 확률로 그 방에서 {{DamageSmall}}공격력이 1.8 증가합니다.#{{LuckSmall}} 행운 8 이상일 때 100% 확률"}, -- Red Patch
	{"41", "성냥개비", "{{Bomb}} 방 클리어 보상이 10% 확률로 폭탄으로 바뀝니다.#{{Bomb}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 폭탄을 추가로 드랍합니다.#{{Trinket53}} 흡수하지 않은 Tick 장신구를 제거할 수 있습니다."}, -- Match Stick
	{"42", "행운의 발가락", "↑ {{LuckSmall}}행운 +1#방 클리어 보상이 등장할 확률이 대폭 증가합니다.#상자, 색돌, 터진 기계 등에서 33%의 확률로 픽업을 추가로 드랍합니다."}, -- Lucky Toe
	{"43", "저주받은 해골", "{{HalfHeart}} 피격 시 빨간하트가 반칸 이하일 때 스테이지 안의 랜덤 방으로 순간이동합니다."}, -- Cursed Skull
	{"44", "안전 마개", "{{Pill}} 방 클리어 보상이 10% 확률로 알약으로 바뀝니다.#{{Pill}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 알약을 추가로 드랍합니다.#{{GoldenChest}} 황금상자에서 {{Pill}}알약이 등장합니다."}, -- Safety Cap
	{"45", "스페이드 A", "{{Card}} 방 클리어 보상이 10% 확률로 카드로 바뀝니다.#{{Card}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 카드를 추가로 드랍합니다.#{{GoldenChest}} 황금상자에서 {{Card}}카드가 드랍될 확률이 증가합니다."}, -- Ace of Spades
	{"46", "아이작의 포크", "{{HealingRed}} 방 클리어 시 10% 확률로 체력을 반칸 회복합니다.#{{LuckSmall}} 행운 18 이상일 때 100% 확률"}, -- Isaac's Fork
	{"47", "The Polariod", "<Item does not exist>"}, -- The Polariod
	{"48", "찢어진 페이지", "{{Collectible35}} 피격 시 5%의 확률로 그 방의 적에게 40의 피해를 줍니다.#{{LuckSmall}} 행운 60 이상일 때 50% 확률"}, -- A Missing Page
	{"49", "피 묻은 동전", " {{HalfHeart}} 동전 획득 시 50% 확률로빨간하트를 반칸 드랍합니다."}, -- Bloody Penny
	{"50", "타버린 동전", "{{Bomb}} 동전 획득 시 50% 확률로 폭탄을 하나 드랍합니다."}, -- Burnt Penny
	{"51", "납작한 동전", "{{Key}} 동전 획득 시 50% 확률로 열쇠를 하나 드랍합니다."}, -- Flat Penny
	{"52", "가짜 동전", "{{Coin}} 동전 획득 시 50% 확률로 동전을 하나 더 획득합니다."}, -- Counterfeit Penny
	{"53", "진드기", "!!! {{Trinket41}}/{{Collectible479}}를 제외한 {{ColorOrange}}교체 및 버리기 불가{{CR}}#방 입장 시 체력이 60 이상인 적의 체력을 15% 깎습니다.#{{HealingRed}} {{BossRoom}}보스방 입장 시 체력을 한칸 회복합니다."}, -- Tick
	{"54", "아이작의 머리", "캐릭터를 따라다니며 캐릭터가 공격방향으로 공격력 3.5의 적을 관통하는 눈물을 발사합니다."}, -- Isaac's Head
	{"55", "매기의 믿음", "{{EternalHeart}} 스테이지 진입 시 이터널하트 +1"}, -- Maggy's Faith
	{"56", "유다의 혀", "{{DevilRoom}} 악마방 상품 가격이 체력 2칸인 경우 체력 1칸으로 변경됩니다."}, -- Judas' Tongue
	{"57", "???의 영혼", "방을 대각선으로 돌아다닙니다.#공격방향으로 공격력 3.5의 유도 + 장애물을 관통하는 눈물을 발사합니다."}, -- ???'s Soul
	{"58", "삼손의 머리채", "{{DamageSmall}} 적 처치 시 6.66%의 확률로 그 방에서 공격력이 0.5씩 (최대 +5) 증가합니다.#{{LuckSmall}} 행운 10 이상일 때 100% 확률"}, -- Samson's Lock
	{"59", "카인의 오른쪽 눈", "{{Collectible21}} 스테이지 진입 시 25%의 확률로 그 스테이지에서 맵에 특수방의 위치를 보여줍니다.#{{LuckSmall}} 행운 3 이상일 때 100% 확률"}, -- Cain's Eye
	{"60", "이브의 새 다리", "{{Collectible117}} 적 처치 시 그 방에서 5%의 확률로 Dead Bird를 소환합니다.#{{LuckSmall}} 행운 8 이상일 때 100% 확률"}, -- Eve's Bird Foot
	{"61", "왼손목", "{{RedChest}} 모든 상자가 빨간 상자로 교체됩니다."}, -- The Left Hand
	{"62", "빛나는 돌", "10초마다 색돌이나 {{LadderRoom}}사다리방이 있는 돌이 빛납니다."}, -- Shiny Rock
	{"63", "안전 가위", "트롤폭탄을 {{Bomb}}폭탄 픽업으로 바꿉니다.#슈퍼 트롤폭탄을 1+1 {{Bomb}}폭탄 픽업으로 바꿉니다."}, -- Safety Scissors
	{"64", "무지개 벌레", "3초마다 랜덤 벌레 장신구 효과가 발동됩니다."}, -- Rainbow Worm
	{"65", "테이프 벌레", "↑ {{RangeSmall}}사거리 x2#↓ 눈물 높이 배율 x0.5"}, -- Tape Worm
	{"66", "게으른 벌레", "↑ {{RangeSmall}}사거리 +4.0#↑ 눈물 높이 +2#↓ {{ShotspeedSmall}}탄속 -0.4"}, -- Lazy Worm
	{"67", "금이 간 주사위", "피격 시 확률적으로 {{Collectible105}}그 방의 아이템, {{Collectible166}}픽업, {{Collectible386}}오브젝트 또는 {{Collectible406}}능력치 배율을 바꿉니다."}, -- Cracked Dice
	{"68", "네오디뮴 자석", "적과 픽업이 캐릭터에게 끌려옵니다."}, -- Super Magnet
	{"69", "흐려진 즉석사진", "때때로 그 방의 적들이 혼란에 걸립니다."}, -- Faded Polaroid
	{"70", "머릿니", "때때로 파란 아군 거미를 하나 소환합니다."}, -- Louse
	{"71", "밥의 방광", "폭탄이 설치될 때 독 장판이 생성됩니다."}, -- Bob's Bladder
	{"72", "손목시계용 전지", "{{Battery}} 방 클리어 보상이 배터리 픽업으로 교체될 확률이 5%에서 6.67%로 증가합니다.#{{Battery}} 픽업 드랍 시 2%의 확률로 배터리 픽업으로 바꿉니다.#방 클리어 시 5% 확률로 충전량을 한칸 더 채워줍니다."}, -- Watch Battery
	{"73", "폭파용 뇌관", "폭탄이 터질 때 10% 확률로 {{Bomb}}폭탄 픽업이 드랍됩니다."}, -- Blasting Cap
	{"74", "벽체 탐지기", "{{LadderRoom}} 장애물 파괴 시 사다리방이 등장할 확률 +0.5%"}, -- Stud Finder
	{"75", "오류", "방마다 다른 랜덤 장신구의 효과가 발동됩니다."}, -- Error
	{"76", "포커 칩", "{{Chest}} 상자에서 50% 확률로 픽업이 추가로 드랍되거나 Attack Fly가 나옵니다."}, -- Poker Chip
	{"77", "물집", "공격이 적을 더 강하게 밀쳐냅니다."}, -- Blister
	{"78", "초침", "적에게 걸린 상태이상의 지속시간이 2배로 증가합니다."}, -- Second Hand
	{"79", "끝없는 무명", "{{Card}}카드 또는 {{Pill}}알약 사용 시 25% 확률로 같은 효과의 픽업이 드랍됩니다."}, -- Endless Nameless
	{"80", "검은 깃털", "Evil up 또는 Sin up 아이템 소지 시 개당 {{DamageSmall}}공격력이 0.2 증가합니다."}, -- Black Feather
	{"81", "눈먼 분노", "피격 후 무적시간이 2배로 증가합니다."}, -- Blind Rage
	{"82", "황금 말발굽", "{{TreasureRoom}} 스테이지 진입 시 15% 확률로 보물방 아이템이 2개가 나오며 하나를 선택하면 나머지는 사라집니다."}, -- Golden Horse Shoe
	{"83", "상점 열쇠", "{{Shop}} 상점을 열쇠 소모 없이 열 수 있습니다."}, -- Store Key
	{"84", "그리드의 갈비뼈", "{{Shop}}상점과 {{SecretRoom}}비밀방에서 Greed/Super Greed가 등장하지 않습니다.#이미 Greed를 처치하였을 경우 재입장 시 상점이 복원됩니다.#{{Coin}} 방 클리어 시 하트가 등장할 경우 33%의 확률로 동전으로 바뀝니다."}, -- Rib of Greed
	{"85", "업보", "!!! 기부기계에 기부 시 33%의 확률로 아래 효과 중 하나 발동:#{{ArrowGrayRight}} {{Coin}}동전 +1(40%)#{{Blank}} {{Heart}}빨간하트 1칸 회복(40%)#{{Blank}} {{LuckSmall}}행운 +1(15%)#{{Blank}} 거지 소환(5%)"}, -- Karma
	{"86", "꼬마 라바", "똥을 파괴할 때마다 파란 아군 파리를 하나 소환합니다."}, -- Lil Larva
	{"87", "엄마의 로켓", "{{HealingRed}} 열쇠를 소모할 때마다 체력 반칸을 회복합니다.#{{Heart}} 빨간하트 반칸 픽업을 한칸으로 바꿉니다."}, -- Mom's Locket
	{"88", "필요없어!", "{{TreasureRoom}}보물방, {{Shop}}상점, {{DevilRoom}}악마방, {{AngelRoom}}천사방에서 99% 확률로 액티브 아이템이 나오지 않습니다."}, -- NO!
	{"89", "미아 방지끈", "패밀리어들 사이의 간격이 가까워집니다."}, -- Child Leash
	{"90", "갈색 마개", "!!! 똥 파괴시 똥이 폭발합니다."}, -- Brown Cap
	{"91", "태변", "일반 똥이 확률적으로 검은 똥으로 대체됩니다.#{{BlackHeart}} 검은 똥 파괴시 확률적으로 블랙하트를 드랍합니다."}, -- Meconium
	{"92", "금이 간 왕관", "↑ {{TearsSmall}}연사 +0.2#각 능력치가 캐릭터 기본 능력치보다 높을 시 각 능력치가 33% 증가합니다."}, -- Cracked Crown
	{"93", "다 쓴 기저귀", "방 입장 시 확률적으로 파리류 적들이 공격하지 않거나 약해집니다."}, -- Used Diaper
	{"94", "생선 꼬리", "아군 파란 파리 또는 거미의 소환량이 2배로 증가합니다."}, -- Fish Tail
	{"95", "검은 이빨", "{{Poison}} 3%의 확률로 공격력 2배의 적을 중독시키는 공격이 나갑니다.#!!! {{LuckSmall}}행운 32 이상일 때 100% 확률"}, -- Black Tooth
	{"96", "우주뱀 벌레", "↑ {{RangeSmall}}사거리 +4#↑ 눈물 높이 +2#눈물이 거대한 나선을 그리며 날아갑니다.#공격이 장애물을 관통합니다."}, -- Ouroboros Worm
	{"97", "편도선", "{{Collectible474}} 12~20회 피격 시 Tonsil을 획득합니다.#{{Collectible474}} Tonsil은 캐릭터를 따라다니며 적의 탄환을 막아줍니다."}, -- Tonsil
	{"98", "콧물딱지", "10%의 확률로 접착 눈물이 나가며 접착 눈물이 적에게 붙을 시 60초동안 지속 피해를 줍니다.#접착 눈물을 발사할 때 50%의 확률로 유도 효과가 생깁니다."}, -- Nose Goblin
	{"99", "탱탱볼", "확률적으로 공격이 무언가에 부딪힐 때 반대 각도로 튕겨져 나갑니다."}, -- Super Ball
	{"100", "밝은 전구", "{{Battery}} 액티브 아이템의 충전량이 최대치일때:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +0.5#{{ArrowGrayRight}} {{TearsSmall}}연사 +0.2#{{ArrowGrayRight}} {{RangeSmall}}사거리 +0.75#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.5#{{ArrowGrayRight}} {{ShotspeedSmall}}탄속 +0.1#{{ArrowGrayRight}} {{LuckSmall}}행운 +1"}, -- Vibrant Bulb
	{"101", "꺼진 전구", "{{Battery}} 액티브 아이템의 충전량이 남아있지 않을때:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +1.5#{{ArrowGrayRight}} {{TearsSmall}}연사 +0.4#{{ArrowGrayRight}} {{RangeSmall}}사거리 +1.5#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.5#{{ArrowGrayRight}} {{ShotspeedSmall}}탄속 +0.3#{{ArrowGrayRight}} {{LuckSmall}}행운 +2"}, -- Dim Bulb
	{"102", "조각난 카드", "{{SecretRoom}} 스테이지 진입 시 비밀방이 하나 더 생성됩니다."}, -- Fragmented Card
	{"103", "똑같다!", "소지중인 동전, 폭탄, 열쇠의 개수가 모두 같을 때 하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 픽업이 1+1로 나옵니다."}, -- Equality!
	{"104", "창사골", "!!! 일회용#피격 시 2% 확률로 그 방의 아이템을 하나 생성합니다."}, -- Wish Bone
	{"105", "점심 도시락", "!!! 일회용#피격 시 2% 확률로 {{Collectible22}}Lunch ({{Heart}}최대 체력 +1) 아이템을 생성합니다."}, -- Bag Lunch
	{"106", "잃어버린 코르크", "캐릭터와 패밀리어가 생성하는 장판의 범위가 넓어집니다."}, -- Lost Cork
	{"107", "까마귀 심장", "피격 시 빨간하트가 가장 우선적으로 소모됩니다.#!!! 악마방/천사방 확률을 방어해 주지 않습니다."}, -- Crow Heart
	{"108", "호두", "!!! 일회용#캐릭터가 폭발에 휘말릴 경우 확률적으로 랜덤 픽업을 드랍합니다."}, -- Walnut
	{"109", "청테이프", "캐릭터의 위치를 기준으로 캐릭터를 따라오는 패밀리어의 위치를 고정시킵니다.#공전형 패밀리어가 회전하지 않습니다."}, -- Duct Tape
	{"110", "은화", "{{Shop}} 7, 8 스테이지에서 상점이 생성됩니다."}, -- Silver Dollar
	{"111", "피투성이 왕관", "{{TreasureRoom}} 7, 8 스테이지에서 보물방이 생성됩니다."}, -- Bloody Crown
	{"112", "과금전사", "{{TreasureRoom}} 스테이지 진입 시 보물방에 재입고 기계가 생성됩니다."}, -- Pay To Win
	{"113", "전쟁의 메뚜기", "{{Bomb}} 방 입장 시 적과 접촉 시 폭발하는 빨간 아군 파리를 소환합니다."}, -- Locust of War
	{"114", "역병의 메뚜기", "{{Poison}} 방 입장 시 적을 중독시키는 초록 아군 파리를 소환합니다."}, -- Locust of Pestilence
	{"115", "기근의 메뚜기", "{{Slow}} 방 입장 시 적을 느려지게 하는 노란 아군 파리를 소환합니다."}, -- Locust of Famine
	{"116", "죽음의 메뚜기", "방 입장 시 공격력 4배의 피해를 주는 검은 아군 파리를 소환합니다."}, -- Locust of Death
	{"117", "정복의 메뚜기", "방 입장 시 하얀 아군 파리를 2~5마리를 소환합니다."}, -- Locust of Conquest
	{"118", "박쥐 날개", "적 처치 시 확률적으로 그 방에서 비행 능력을 얻습니다."}, -- Bat Wing
	{"119", "줄기 세포", "{{HealingRed}} 스테이지 진입 시 체력을 반칸 회복합니다."}, -- Stem Cell
	{"120", "머리핀", "{{Battery}} {{BossRoom}}보스방 최초 입장 시 액티브 아이템의 충전량을 모두 충전합니다."}, -- Hairpin
	{"121", "나무 십자가", "{{HolyMantleSmall}} 스테이지 진입 시 피해 1번 무시하는 보호막을 생성합니다."}, -- Wooden Cross
	{"122", "버터!", "액티브 아이템 사용 시 사용한 액티브 아이템을 내려놓습니다.#피격 시 2% 확률로 소지중인 패시브 아이템 중 하나를 내려놓습니다."}, -- Butter!
	{"123", "세공 깃털", "{{AngelRoom}} Uriel/Gabriel이 Key Piece 대신 천사방 아이템을 드랍합니다.#!!! 한 종류의 Key Piece만 소지 시 Key Piece를 드랍합니다."}, -- Filigree Feather
	{"124", "문 받침대", "방에 입장 시 들어왔던 문이 닫히지 않습니다."}, -- Door Stop
	{"125", "연장 코드", "{{ColorCyan}}모든 캐릭터{{CR}}와 패밀리어 사이에 전류 레이저가 흐르며;#{{ArrowGrayRight}} 레이저에 접촉한 적은 초당 6의 피해를 받습니다."}, -- Extension Cord
	{"126", "썩은 동전", "동전 획득 시 파란 아군 파리를 소환합니다."}, -- Rotten Penny
	{"127", "아기 초능력자", "패밀리어의 공격에 유도 효과가 생깁니다."}, -- Baby-Bender
	{"128", "손가락 뼈", "{{EmptyBoneHeart}} 피격 시 2% 확률로 뼈하트를 획득합니다."}, -- Finger Bone
}

---------- Cards ----------
EID.descriptions[languageCode].cards={
	{"1", "0 - 바보", "그 스테이지의 시작방으로 순간이동합니다."}, -- 0 - The Fool
	{"2", "I - 마법사", "{{Collectible192}} 그 방에서 공격이 적에게 유도됩니다."}, -- I - The Magician
	{"3", "II - 여교황", "엄마발이 랜덤 적에게 떨어져 300의 피해를 줍니다.#!!! 적이 없는 방이나 {{MomBossSmall}}Mom 전투 중일 때 사용 시 엄마발이 캐릭터의 위치에 떨어집니다."}, -- II - The High Priestess
	{"4", "III - 여제", "{{Collectible122}} {{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +1.5#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.3"}, -- III - The Empress
	{"5", "IV - 황제", "{{BossRoom}} 보스방으로 순간이동합니다."}, -- IV - The Emperor
	{"6", "V - 교황", "{{SoulHeart}} 소울하트를 2개 드랍합니다."}, -- V - The Hierophant
	{"7", "VI - 연인", "{{Heart}} 빨간하트를 2개 드랍합니다."}, -- VI - The Lovers
	{"8", "VII - 전차", "{{Collectible77}} 6초간 무적 상태가 되며 접촉한 적에게 40의 피해를 줍니다."}, -- VII - The Chariot
	{"9", "VIII - 정의", "{{Heart}}하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠를 하나씩 드랍합니다."}, -- VIII - Justice
	{"10", "IX - 은둔자", "{{Shop}} 상점으로 순간이동합니다."}, -- IX - The Hermit
	{"11", "X - 운명의 수레바퀴", "{{Slotmachine}} 도박기계를 소환합니다.#{{ArrowGrayRight}} {{FortuneTeller}} 25%의 확률로 운세기계가 대신 등장"}, -- X - Wheel of Fortune
	{"12", "XI - 힘", "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} {{Heart}}최대 체력 +1#{{ArrowGrayRight}} {{DamageSmall}}공격력 +0.3#{{ArrowGrayRight}} {{DamageSmall}}공격력 배율 +50%#{{ArrowGrayRight}} {{RangeSmall}}사거리 +5.25#{{ArrowGrayRight}} 눈물 높이 +0.5#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.3"}, -- XI - Strength
	{"13", "XII - 매달린 남자", "{{Collectible20}} 그 방에서 비행 능력을 얻습니다."}, -- XII - The Hanged Man
	{"14", "XIII - 죽음", "{{Collectible35}} 그 방의 적에게 40의 피해를 줍니다."}, -- XIII - Death
	{"15", "XIV - 절제", "{{DonationMachine}} 헌혈기계를 하나 생성합니다."}, -- XIV - Temperance
	{"16", "XV - 악마", "{{Collectible34}} 그 방에서 {{DamageSmall}}공격력 +2"}, -- XV - The Devil
	{"17", "XVI - 탑", "{{Collectible65}} 방 안에 트롤폭탄을 6개 생성합니다."}, -- XVI - The Tower
	{"18", "XVII - 별", "{{TreasureRoom}} 보물방으로 순간이동합니다."}, -- XVII - The Stars
	{"19", "XVIII - 달", "{{SecretRoom}} 비밀방으로 순간이동합니다."}, -- XVIII - The Moon
	{"20", "XIX - 해", "맵에 스테이지 구조, 특수방, {{SecretRoom}}일반 비밀방의 위치를 표시합니다.#{{ArrowGrayRight}} 그 방의 적에게 100의 피해를 줍니다.#{{ArrowGrayRight}} {{HealingRed}}체력을 모두 회복합니다."}, -- XIX - The Sun
	{"21", "XX - 심판", "{{Beggar}} 랜덤 거지를 소환합니다."}, -- XX - Judgement
	{"22", "XXI - 세계", "맵에 스테이지 구조, 특수방, {{SecretRoom}}일반 비밀방의 위치를 표시합니다."}, -- XXI - The World
	{"23", "클로버 2", "{{Bomb}} 소지 중인 폭탄 x2"}, -- 2 of Clubs
	{"24", "다이아 2", "{{Coin}} 소지 중인 동전 x2"}, -- 2 of Diamonds
	{"25", "스페이드 2", "{{Key}} 소지 중인 열쇠 x2"}, -- 2 of Spades
	{"26", "하트 2", "{{Heart}} 소지 중인 빨간하트 x2"}, -- 2 of Hearts
	{"27", "클로버 A", "{{Bomb}} 그 방의 픽업을 폭탄으로 바꿉니다."}, -- Ace of Clubs
	{"28", "다이아 A", "{{Coin}} 그 방의 픽업을 동전으로 바꿉니다."}, -- Ace of Diamonds
	{"29", "스페이드 A", "{{Key}}그 방의 픽업을 열쇠로 바꿉니다."}, -- Ace of Spades
	{"30", "하트 A", "{{Heart}} 그 방의 픽업을 하트로 바꿉니다."}, -- Ace of Hearts
	{"31", "조커", "{{AngelDevilChanceSmall}} 악마방 또는 천사방으로 순간이동합니다."}, -- Joker
	{"32", "하갈라즈", "그 방의 장애물을 제거합니다."}, -- Hagalaz
	{"33", "제라", "그 방의 픽업을 복제합니다."}, -- Jera
	{"34", "에와즈", "{{Collectible84}} 다음 스테이지로 가는 다락문을 생성합니다."}, -- Ehwaz
	{"35", "다가즈", "{{SoulHeart}} 소울하트 +1#{{CurseCursedSmall}} Labyrinth 및 특수 시드를 제외한 그 스테이지의 저주를 제거합니다."}, -- Dagaz
	{"36", "엔수즈", "{{Collectible333}} 그 스테이지에서 맵에 특수방 위치, 비밀방 위치, 스테이지 구조가 표시됩니다."}, -- Ansuz
	{"37", "페트로", "{{Collectible105}} 그 방의 아이템을 다른 아이템으로 바꿉니다."}, -- Perthro
	{"38", "벨카노", "파란 아군 파리/거미를 3마리씩 소환합니다."}, -- Berkano
	{"39", "알기즈", "{{Collectible58}} 30초동안 무적 상태가 됩니다."}, -- Algiz
	{"40", "비어있는 룬", "{{Rune}} 랜덤 룬 효과를 발동합니다.#25% 확률로 Blank Rune을 드랍합니다."}, -- Blank Rune
	{"41", "검은 룬", "그 방의 아이템을 흡수하고 흡수한 만큼 랜덤 능력치가 2개씩 증가합니다.#그 방의 픽업을 흡수하고 흡수한 개수만큼 파란 아군 파리 및 거미를 소환합니다.#그 방의 적에게 40의 피해를 줍니다."}, -- Black Rune
	{"42", "혼돈 카드", "{{ColorOrange}}캐릭터의 몸통이 바라보는 방향{{CR}}으로 카드를 던지며 카드에 맞은 적은 즉사합니다.#!!! Delirium은 면역"}, -- Chaos Card
	{"43", "신용카드", "{{Shop}}상점 또는 {{DevilRoom}}악마방에서 사용 시 모든 상품을 무료로 획득할 수 있습니다."}, -- Credit Card
	{"44", "규칙 카드", "게임 힌트를 화면에 출력합니다."}, -- Rules Card
	{"45", "비인간적인 카드", "방 전체에 똥을 생성합니다."}, -- A Card Against Humanity
	{"46", "자살 왕", "사용 시 사망하며 10개의 아이템 또는 픽업을 생성합니다."}, -- Suicide King
	{"47", "감옥 탈출 카드", "그 방의 닫혀있는 문을 모두 엽니다."}, -- Get Out Of Jail Free Card
	{"48", "? 카드", "소지중인 액티브 아이템의 효과를 발동합니다."}, -- ? Card
	{"49", "주사위 파편", "그 방의 아이템과 픽업을 다른 아이템으로 바꿉니다."}, -- Dice Shard
	{"50", "비상 연락처", "엄마손 2개가 랜덤 적에게 떨어져 적을 붙잡습니다."}, -- Emergency Contact
	{"51", "신성한 카드", "{{HolyMantle}} 사용한 방에서 피격 시 피해를 1회 무시하는 방어막을 제공합니다.#25% 확률로 Holy Card를 드랍합니다."}, -- Holy Card
	{"52", "거대한 성장", "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} {{DamageSmall}}공격력 +7#{{ArrowGrayRight}} {{RangeSmall}}사거리 +30#{{ArrowGrayRight}} 장애물을 부술 수 있습니다."}, -- Huge Growth
	{"53", "고대의 부름", "카드를 3개 드랍합니다."}, -- Ancient Recall
	{"54", "시간 여행", "{{Timer}} 사용 시 그 방에서:#{{ArrowGrayRight}} {{SpeedSmall}}이동속도 +0.5#{{ArrowGrayRight}} {{ShotspeedSmall}}탄속 -1#{{ArrowGrayRight}} {{Slow}} 그 방의 적들이 영구적으로 느려집니다."}, -- Era Walk
}

---------- Pills ----------
EID.descriptions[languageCode].unidentifiedPill = "확인하지 않은 알약"

EID.descriptions[languageCode].pills={
	{"0", "질나쁜 방귀", "독방귀를 뀝니다."}, -- Bad Gas
	{"1", "질나쁜 환각", "체력 한칸의 피해를 받습니다."}, -- Bad Trip
	{"2", "강철같은 알약", "↑ {{SoulHeart}}소울하트 +2"}, -- Balls of Steel
	{"3", "폭탄은 곧 열쇠", "{{Bomb}}폭탄과 {{Key}}열쇠의 개수를 서로 바꿉니다."}, -- Bombs are Key
	{"4", "폭탄 설사", "캐릭터의 위치에 점화된 폭탄 5개를 생성합니다."}, -- Explosive Diarrhea
	{"5", "체력 회복", "{{HealingRed}} 체력을 모두 회복합니다."}, -- Full Health
	{"6", "체력 감소", "↓ 최대 체력 -1"}, -- Health Down
	{"7", "체력 증가", "↑ {{EmptyHeart}}빈 최대 체력 +1"}, -- Health Up
	{"8", "알약을 찾았어", "무효과"}, -- I Found Pills
	{"9", "사춘기", "무효과#{{Blank}} (3번 사용 시 1회 한정 {{Heart}}최대 체력 +1)"}, -- Puberty
	{"10", "멋진 파리", "적의 탄환을 막아주는 파리 한마리를 얻습니다."}, -- Pretty Fly
	{"11", "사거리 감소", "↓ {{RangeSmall}}사거리 -2"}, -- Range Down
	{"12", "사거리 증가", "↑ {{RangeSmall}}사거리 +2.5"}, -- Range Up
	{"13", "이동속도 감소", "↓ {{SpeedSmall}}이동속도 -0.12"}, -- Speed Down
	{"14", "이동속도 증가", "↑ {{SpeedSmall}}이동속도 +0.15"}, -- Speed Up
	{"15", "연사 감소", "↓ {{TearsSmall}}연사 -0.28"}, -- Tears Down
	{"16", "연사 증가", "↑ {{TearsSmall}}연사 +0.35"}, -- Tears Up
	{"17", "행운 감소", "↓ {{LuckSmall}}행운 -1"}, -- Luck Down
	{"18", "행운 증가", "↑ {{LuckSmall}}행운 +1"}, -- Luck Up
	{"19", "순간이동약", "스테이지 안의 랜덤 방으로 순간이동합니다.#{{ErrorRoom}} 낮은 확률로 오류방으로 이동합니다."}, -- Telepills
	{"20", "48시간 풀충전!", "액티브 아이템 충전량을 모두 충전하고 배터리 픽업을 1~2개 드랍합니다."}, -- 48 Hour Energy!
	{"21", "토혈", "빨간하트가 한칸이 되며 {{Heart}}빨간하트 픽업을 1~4개 드랍합니다."}, -- Hematemesis
	{"22", "마비", "3초간 캐릭터가 마비 상태가 됩니다."}, -- Paralysis
	{"23", "모두 볼 수 있어!", "사용 시 그 스테이지에서 {{SecretRoom}}{{SuperSecretRoom}}비밀방이 자동으로 열립니다."}, -- I can see forever!
	{"24", "페로몬", "그 방의 적을 3초간 {{Charm}}매혹시킵니다."}, -- Pheromones
	{"25", "건망증", "{{CurseLostSmall}} Lost 저주에 걸리며 맵을 볼 수 없습니다."}, -- Amnesia
	{"26", "레몬 파티", "사용 시 캐릭터의 주위에 커다란 노란 장판을 생성합니다.#장판은 지상의 적에게 초당 24의 피해를 줍니다."}, -- Lemon Party
	{"27", "님 마술43?", "눈물이 30초간 대각선으로 나갑니다."}, -- R U A Wizard?
	{"28", "진통제!", "그 방에서 캐릭터가 받는 모든 피해가 체력 반칸으로 고정됩니다."}, -- Percs!
	{"29", "과다복용!", "그 방에서 캐릭터가 받는 모든 피해가 체력 한칸 이상으로 고정됩니다."}, -- Addicted!
	{"30", "휴-식", "2초간 캐릭터의 위치에 똥을 생성합니다."}, -- Re-Lax
	{"31", "???", "{{CurseMazeSmall}} Maze 저주에 걸리며 방 이동 시 스테이지 안의 다른 방으로 순간이동하거나 두개의 랜덤 방의 위치가 서로 바뀝니다."}, -- ???
	{"32", "커지는 알약", "캐릭터의 크기가 커집니다."}, -- One makes you larger
	{"33", "작아지는 알약", "캐릭터의 크기가 작아집니다."}, -- One makes you small
	{"34", "감염!", "그 방의 똥의 개수만큼 파란 아군 거미를 소환합니다."}, -- Infested!
	{"35", "감염?", "그 방의 적의 수만큼 파란 아군 거미를 소환합니다."}, -- Infested?
	{"36", "최강 알약!", "6.5초간 무적 상태가 되며 접촉한 적에게 초당 40의 피해를 줍니다.#{{Fear}} 적들이 캐릭터에게서 도망가며 적 2기를 죽일 때마다 {{HealingRed}}체력을 반칸 회복합니다."}, -- Power Pill!
	{"37", "전자오락 시야경", "30초마다 총 3번 화면의 화질이 감소합니다."}, -- Retro Vision
	{"38", "마지막까지 친구야!", "파란 아군 파리를 3마리 소환합니다."}, -- Friends Till The End!
	{"39", "조절실패", "캐릭터가 미끄러지는 갈색 장판이 생성됩니다."}, -- X-Lax
	{"40", "뭔가 잘못됐어...", "적을 {{Slow}}둔화시키는 검은 장판을 생성합니다."}, -- Something's wrong...
	{"41", "완전 지루해...", "그 방의 적들이 영구적으로 {{Slow}}느려집니다."}, -- I'm Drowsy...
	{"42", "완전 신나!!", "그 방의 적들이 빨라집니다."}, -- I'm Excited!!!
	{"43", "꿀꺽!", "소지중인 장신구를 흡수해 효과를 영구적으로 얻습니다."}, -- Gulp!
	{"44", "퉤엣!", "바라보는 방향으로 {{Collectible149}}폭발하는 독성 눈물을 발사합니다."}, -- Horf!
	{"45", "햇살 위를 걷는 기분이야!", "6초간 캐릭터의 {{SpeedSmall}}이동속도 +0.28, 공격불능 및 접촉공격불능 무적 상태가 됩니다."}, -- Feels like I'm walking on sunshine!
	{"46", "끄어억!", "마지막으로 사용한 알약을 드랍합니다."}, -- Vurp!
}

---------- Sacrifice Room ----------
EID.descriptions[languageCode].sacrificeHeader = "희생 보상"

EID.descriptions[languageCode].sacrifice={
	{"1", "희생 1회", "[50%] {{Coin}}동전 1개#[100%] 1분 이내로 1스테이지 보스 클리어 시 {{Bomb}}폭탄 1개"},
	{"2", "희생 2회", "[50%] {{Coin}}동전 1개#[100%] 1분 이내로 1스테이지 보스 클리어 시 {{Bomb}}폭탄 1개"},
	{"3", "희생 3회", "[67%] {{AngelChanceSmall}}천사방 확률 +15%"},
	{"4", "희생 4회", "[50%] {{Chest}}상자 1개"},
	{"5", "희생 5회", "[67%] {{AngelChanceSmall}}천사방 확률 +50%#[33%] {{Coin}}동전 3개"},
	{"6", "희생 6회", "[67%] {{Chest}}상자 1개#[33%] {{AngelRoom}}천사방으로 순간이동#{{Blank}} 이미 {{AngelRoom}}천사방/{{DevilRoom}}악마방으로 이동한 경우 해당 방으로 순간이동"},
	{"7", "희생 7회", "[67%] {{SoulHeart}}소울하트 1개#[33%] {{AngelRoom}}천사방 아이템 1개"},
	{"8", "희생 8회", "[100%] 트롤폭탄 7개"},
	{"9", "희생 9회", "[100%] 천사 Uriel 보스 소환"},
	{"10", "희생 10회", "[50%] {{SoulHeart}}소울하트 7개#[50%] {{Coin}}동전 30개"},
	{"11", "희생 11회", "[100%] 천사 Gabriel 보스 소환"},
	{"12", "희생 12회 +", "[50%] Dark Room 스테이지로 이동"},
}

---------- Dice Room ----------
EID.descriptions[languageCode].diceHeader = "주사위방 효과"

EID.descriptions[languageCode].dice={
	{"1", "1번", "{{Collectible284}} 소지중인 아이템 변경"},
	{"2", "2번", "{{Collectible166}} 그 방의 픽업 변경"},
	{"3", "3번", "{{Collectible166}} 스테이지 안의 모든 픽업 변경"},
	{"4", "4번", "{{Collectible105}} 스테이지 안의 모든 아이템 변경"},
	{"5", "5번", "{{Collectible127}} 스테이지 재시작"},
	{"6", "6번", "{{Collectible283}} 그 방의 아이템, 픽업, 소지중인 아이템 변경"},
}

---------- Transformations ----------
EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Guppy",			-- 1
	"Fun Guy",			-- 2
	"Beelzebub",		-- 3
	"Conjoined",		-- 4
	"Spun",				-- 5
	"Yes Mother?",		-- 6
	"Oh Crap",			-- 7
	"Bob",				-- 8
	"Leviathan",		-- 9
	"Seraphim",			-- 10
	"Super Bum",		-- 11
	"Bookworm",			-- 12
	"Spider Baby",		-- 13
	"Adult",			-- 14
	"Stompy"			-- 15
}

---------- Misc ----------
-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them
-- Each language can do their own algorithm to modify the given text to their needs
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)
	-- TODO: Not Implemented right now...
	return text
end

EID.descriptions[languageCode].VoidText = "흡수 시 이하 능력치 증가:"
EID.descriptions[languageCode].VoidNames = {"이동속도 {1}", "연사 {1}", "공격력 {1}", "사거리 {1}", "탄속 {1}", "행운 {1}"}
EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{DamageSmall}}공격력 +4", "↑ {{TearsSmall}}공격 딜레이 -4", "↑ {{SpeedSmall}}이동속도 +0.5", "↑ {{RangeSmall}}사거리 +7.5#↑ 눈물높이 +1"}

EID.descriptions[languageCode].CrookedPennyHeads = "성공"
EID.descriptions[languageCode].CrookedPennyTails = "실패"

EID.descriptions[languageCode].LuckModifier = "{2}: 확률 {1}%"

EID.descriptions[languageCode].CollectionPageInfo = "아직 해당 아이템을 획득한 적이 없습니다. 획득하여 아이템 컬렉션에 채워주세요."

EID.descriptions[languageCode].BlackFeatherInformation = "현재 아이템 {{ColorLime}}{1}{{CR}}개 소지 중 (공격력 +{2})"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} 일회용 {{Warning}}"

EID.descriptions[languageCode].MCM={
	DemoObjectName = "아이템 설명 모드 표시용",
	DemoObjectTransformation = "테스트 변신 세트 표시",
	DemoObjectText = "이 설명은 한국어로 작성되었습니다.#!!! 간단 설정 방법:#{{Collectible182}} 폰트: Visuals→Font Type#{{Freezing}} 텍스트박스 너비: General→Textbox Width#\1 {{Damage}}테스트 공격력 +1#{{AngelDevilChance}} 악마와 천사, 당신의 선택은?#{{DeliriumSmall}} 모두가 싫어하는 델리리움",
}
-- Find/replace pairs for changing "+1 Health" to "+1 Soul Heart" for soul health characters, or nothing at all for The Lost
-- {1} = number of hearts, {pluralize} = plural character
-- These texts are affected by the PluralizeFunction (ab+ file)
-- If having a simple plural character doesn't work for your language, you could just include an extra string pair to catch plural lines
EID.descriptions[languageCode].RedToX = {
	-- These change "+1 Health" to just "+1 Soul Heart" and etc.
	-- For Korean, keep all description except lost, just icon changes
	["Red to Soul"] = {"↑ {{Heart}}최대 체력 +{1}", "↑ {{SoulHeart}}최대 체력 +{1}",
	"↑ {{HealingRed}}빨간하트 +{1}", "",
	"↑ {{EmptyHeart}}빈 최대 체력 +{1}", "↑ {{SoulHeart}}최대 체력 +{1}",
	"↓ {{EmptyHeart}}최대 체력 {1}", "↓ {{SoulHeart}}최대 체력 {1}"},

	["Red to Black"] = {"↑ {{Heart}}최대 체력 +{1}", "↑ {{BlackHeart}}최대 체력 +{1}",
	"↑ {{HealingRed}}빨간하트 +{1}", "",
	"↑ {{EmptyHeart}}빈 최대 체력 +{1}", "↑ {{BlackHeart}}최대 체력 +{1}",
	"↓ {{EmptyHeart}}최대 체력 {1}", "↓ {{BlackHeart}}최대 체력 {1}"},

	["Red to Bone"] = {"↑ {{Heart}}최대 체력 +{1}", "↑ {{BoneHeart}}최대 체력 +{1}",
	"↑ {{EmptyHeart}}빈 최대 체력 +{1}", "↑ {{EmptyBoneHeart}}빈 최대 체력 +{1}",
	"{{HealingRed}}", "{{HealingBone}}",
	"↓ {{EmptyHeart}}최대 체력 {1}", "↓ {{EmptyBoneHeart}}최대 체력 {1}"}, -- Red HP to Bone Hearts

	["Red to Coin"] = {"↑ {{Heart}}최대 체력 +{1}", "↑ {{CoinHeart}}최대 체력 +{1}",
	"↑ {{EmptyHeart}}빈 최대 체력 +{1}", "↑ {{EmptyCoinHeart}}빈 최대 체력 +{1}",
	"↑ {{HealingRed}}빨간하트 +{1}", "↑ {{HealingCoin}}빨간하트 +{1}", "반칸 회복", "한칸 회복", "{{HealingRed}}", "{{HealingCoin}}", "↓ {{EmptyHeart}}최대 체력 {1}", "↓ {{EmptyCoinHeart}}최대 체력 {1}"},

	["Red to None"] = {"↑ {{Heart}}최대 체력 +{1}", "", "↑ {{EmptyHeart}}빈 최대 체력{2} +{1}", "", "↓ {{EmptyHeart}}최대 체력 {1}", "", "↑ {{HealingRed}}빨간하트 +{1}", ""}, -- Red HP to None (The Lost)
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "{1} 예측",
	InventoryEmpty = "(소지 아이템 없음)",
	CategoryNames = {
		Overview = "요약",
		Wisps = "아이템 불꽃",
		Special = "스페셜",
		Actives = "액티브",
		Pockets = "소모성",
		Trinkets = "장신구",
		Passives = "패시브",
		Character = "캐릭터 요약",
	}
}

-- includes Planetarium even though it's unused in AB+ for convenience
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "일반방", "상점", "I AM ERROR (오류방)", "보물방", "보스방", "미니보스방", "비밀방", "일급비밀방", "오락실", "저주방", "도전방/보스도전방", "책방", "희생방", "악마방", "천사방", "사다리방", "보스러시", "깨끗한 침대방", "더러운 침대방", "금고방", "주사위방", "블랙마켓", "출구방", "천체관", "텔레포터 입구", "텔레포터 출구", "대체 루트 입구", "파란 방", "특급비밀방",
-- Not technically room types but still potentially useful to have localized
[666] = "악마방/천사방", [1024] = "빨간방(일반)", [1025] = "빨간방(특수)" }

-- currently used for D1
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "None",

	["5.10"] = "{{Heart}}하트",
	["5.10.1"] = "{{Heart}}빨간하트", ["5.10.2"] = "{{HalfHeart}}빨간하트 반칸", ["5.10.3"] = "{{SoulHeart}}소울하트", ["5.10.4"] = "{{EternalHeart}}이터널하트", ["5.10.5"] = "{{Heart}}1+1 빨간하트", ["5.10.6"] = "{{BlackHeart}}블랙하트", ["5.10.7"] = "{{GoldHeart}}황금하트", ["5.10.8"] = "{{HalfSoulHeart}}소울하트 반칸", ["5.10.9"] = "{{Heart}}도망가는 빨간하트", ["5.10.10"] = "{{BlendedHeart}}블렌드하트", ["5.10.11"] = "{{EmptyBoneHeart}}뼈하트", ["5.10.12"] = "{{RottenHeart}}썩은하트",

	["5.20"] = "{{Coin}}동전",
	["5.20.1"] = "{{Crafting8}}페니", ["5.20.2"] = "{{Crafting9}}니켈", ["5.20.3"] = "{{Crafting10}}다임", ["5.20.4"] = "{{Crafting8}}1+1 페니", ["5.20.5"] = "{{Crafting11}}행운 동전", ["5.20.6"] = "{{Crafting9}}끈적이는 니켈", ["5.20.7"] = "{{Crafting26}}황금페니",

	["5.30"] = "{{Key}}열쇠",
	["5.30.1"] = "{{Crafting12}}열쇠", ["5.30.2"] = "{{Crafting13}}황금열쇠", ["5.30.3"] = "{{Crafting12}}1+1 열쇠", ["5.30.4"] = "{{Crafting14}}충전된 열쇠",

	["5.40"] = "{{Bomb}}폭탄",
	["5.40.1"] = "{{Crafting15}}폭탄", ["5.40.2"] = "{{Crafting15}}1+1 폭탄", ["5.40.3"] = "{{Crafting15}}트롤폭탄", ["5.40.4"] = "{{Crafting16}}황금폭탄", ["5.40.5"] = "{{Crafting15}}슈퍼 트롤폭탄", ["5.40.7"] = "{{Crafting17}}기가폭탄",

	["5.42"] = "{{Crafting29}} 똥", ["5.42.1"] = "{{Crafting29}} 커다란 똥",

	["5.90"] = "{{Battery}}배터리",
	["5.90.0"] = "{{Crafting19}}리틀 배터리", --AB+ didn't have subtypes for batteries
	["5.90.1"] = "{{Crafting19}}리틀 배터리", ["5.90.2"] = "{{Crafting18}}마이크로 배터리", ["5.90.3"] = "{{Crafting20}}메가 배터리", ["5.90.4"] = "{{Crafting28}}황금 배터리",

	["5.50"] = "{{Chest}}상자", ["5.51"] = "{{BombChest}}돌상자", ["5.52"] = "{{SpikedChest}}가시상자", ["5.53"] = "{{EternalChest}}하얀상자", ["5.54"] = "{{MimicChest}}함정상자", ["5.55"] = "{{OldChest}}오래된상자", ["5.56"] = "{{WoodenChest}}나무상자", ["5.57"] = "{{MegaChest}}메가상자", ["5.58"] = "{{HauntedChest}}유령상자", ["5.60"] = "{{GoldenChest}}황금상자", ["5.360"] = "{{RedChest}}빨간상자",

	["5.69"] = "{{GrabBag}}자루", ["5.69.1"] = "{{GrabBag}}자루", ["5.69.2"] = "{{BlackSack}}검은자루",

	["5.70"] = "{{Pill}}알약",
	["5.300"] = "{{Card}}카드",
	["5.301"] = "{{Rune}}룬", -- not a real id
	["5.350"] = "{{Trinket}}장신구",

}
-- Card Buffs caused by Tarot Cloth (separate table from Rep due to how different they are)
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple)
EID.descriptions[languageCode].tarotClothBuffsAB = {
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[6] = {2, 4}, -- V - The Hierophant
	[7] = {2, 4}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"{{Heart}}하트, {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠를 {{ColorShinyPurple}}2{{CR}}개씩 드랍합니다."}, -- VIII - Justice
	[11] = {"{{Slotmachine}} 도박기계를 2개 소환합니다.#{{ArrowGrayRight}} {{FortuneTeller}} 각각 25%의 확률로 운세기계가 대신 등장"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {"하나", "2개"}, -- XIV - Temperance
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {"랜덤 거지를 {{ColorShinyPurple}}2{{CR}}명 소환합니다."}, -- XX - Judgement
	[23] = {"x2", "x4"}, -- 2 of Clubs
	[24] = {"x2", "x4"}, -- 2 of Diamonds
	[25] = {"x2", "x4"}, -- 2 of Spades
	[26] = {"x2", "x4"}, -- 2 of Hearts
	[33] = {"x2", "x4"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = "!!! 일부 아이템이 배열에서 지워질 수 있음", -- Perthro
	[38] = {3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = "랜덤 효과 수 및 Blank Rune 드랍 회수 x2", -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = "2회 사용", -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}

-- Conditional descriptions
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs
EID.descriptions[languageCode].ConditionalDescs = {
	------ GENERAL STRINGS ------
	["Overridden"] = "{1}에 의해 무효화",
	["Overrides"] = "{1}을(를) 무효화",
	["Almost No Effect"] = "{1}에는 거의 무효과",
	["No Effect"] = "{1}에는 무효과",
	["No Effect From"] = "{1}의 경우 무효과",
	["No Effect Replace"] = "{1}에는 무효과",
	["Can't Charge"] = "{1} 충전 불가",
	["Can't Be Charged"] = "{1}(으)로 충전 불가",
	["Can't Be Duplicated"] = "복제 불가",
	["No Effect (Greed)"] = "{{GreedMode}} Greed Mode: 무효과",
	["No Effect (Copies)"] = "중첩 효과 없음", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "추가 효과 없음", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "{{ColorSilver}}{1}에 다른 효과 존재{{CR}}",
	["Dies on Use"] = "!!! {1}: 사용 시 사망", -- for Razor Blade and such as The Lost

	------ GREED MODE ------
	["Room to Wave"] = {"방", "웨이브", "방", "웨이브"}, -- convert room clear effects to wave clear effects
	["No Champion Drops"] = "!!! Greed Mode에서는 챔피언이 보상을 드랍하지 않음", -- Champion Belt / Purple Heart
	["5.300.15"] = {"{{DemonBeggar}} 악마거지를 하나 소환합니다."}, -- Temperance (Greed)
	["5.300.19"] = {"그 스테이지의 시작방으로 순간이동합니다."}, -- The Moon (Greed)
	["5.300.20"] = {"{{HealingRed}} 그 방의 적에게 100의 피해를 주고 체력을 모두 회복합니다."}, -- XIX - The Sun (Greed)
	["5.100.483 (Greed)"] = "{{GreedMode}} 각 방마다 발생, 웨이브마다 발생시키지는 않음", -- Mama Mega (Greed)
	["5.100.535"] = "{{GreedMode}} Ultra Greed 보스전에서만 효과 발동", -- Blanket (Greed)
	["5.350.120"] = "{{GreedMode}} Ultra Greed 보스전에서만 효과 발동", -- Hairpin (Greed)
	["5.100.246"] = {"맵에 {{SuperSecretRoom}}일급 비밀방의 위치가 표시됩니다."}, -- Blue Map (Greed)
	["5.100.333"] = {"맵에 {{SuperSecretRoom}}일급 비밀방의 위치가 표시됩니다."}, -- The Mind (Greed)
	["5.100.514"] = {"적과 적의 탄환이 때때로 1초간 멈춥니다."}, -- Broken Modem (Greed)
	["5.350.34"] = {"{{Heart}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 하트를 추가로 드랍합니다."}, -- Child's Heart
	["5.350.36"] = {"{{Key}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 열쇠를 추가로 드랍합니다."}, -- Rusted Key
	["5.350.41"] = {"{{Bomb}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 폭탄을 추가로 드랍합니다.#{{Trinket53}} 흡수하지 않은 Tick 장신구를 제거할 수 있습니다."}, -- Match Stick
	["5.350.44"] = {"{{Pill}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 알약을 추가로 드랍합니다."}, -- Safety Cap
	["5.350.45"] = {"{{Card}} 상자, 색돌, 터진 기계 등에서 33%의 확률로 카드를 추가로 드랍합니다."}, -- Ace of Spades
	["5.350.72"] = {"{{Battery}} +10% 픽업 드랍 시 배터리 픽업으로 바꿀 확률 +10%#{{Battery}} 웨이브 시작 시 5% 확률로 충전량을 한칸 더 채워줍니다."}, -- Watch Battery
	["5.100.297 (Greed)"] = {"사용 시 스테이지마다 다른 보상을 드랍합니다.#Basement: 2{{Bomb}} + 2{{Key}}#Caves: {{BossRoom}} 1개 + 2{{SoulHeart}}#Depths: 20{{Coin}}#Womb: {{BossRoom}} 2개#Sheol: {{DevilRoom}} 1개 + 1{{BlackHeart}}#The Shop/Ultra Greed: 1{{Coin}}"}, -- Pandora's Box

	------ ACHIEVEMENT CHECKS ------
	["5.350.23"] = "!!! {{SacrificeRoom}}희생방에서 사망 시 The Lost 캐릭터가 해금됩니다.", -- Missing Poster (Unlock The Lost)
	["5.100.297"] = {"{{Collectible523}}Moving Box 해금", "무효과"}, -- Pandora's Box unlocking Moving Box


	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	-- NO RED HEALTH CHARS
	["Super Bandage Soul"] = {"↑ {{SoulHeart}}소울하트 +3"}, -- for Soul Heart chars
	["Super Bandage Black"] = {"↑ {{SoulHeart}}소울하트 +2#↑ {{BlackHeart}}블랙하트 +1"}, -- for Black Heart chars
	["Black Lotus Soul"] = {"↑ {{SoulHeart}}소울하트 +2#↑ {{BlackHeart}}블랙하트 +1"}, -- for Soul Heart chars
	["Black Lotus Black"] = {"↑ {{SoulHeart}}소울하트 +1#↑ {{BlackHeart}}블랙하트 +2"}, -- for Black Heart chars

	["5.100.135 (PHD)"] = "{1} 소지 시 동전 2~3개 소환", -- IV Bag PHD
	["Keeper 0-1"] = "{1}: 0~1개", -- IV Bag/Piggy Bank Keeper
	["5.100.549"] = "{1}: ↑ {{TearsSmall}}연사 +0.4", -- Brittle Bones (Keeper+Lost)
	["5.100.501"] = "{1}: 체력 상한을 초과할 수 있습니다.", -- Greed's Gullet
	["5.100.230 (Keeper)"] = "!!! {1}: {{ColorRed}}획득 시 사망", -- Abaddon

	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = "추가 발사 수 +3#눈물 딜레이 증가 없음", -- The Inner Eye
	["5.100.153 (Copies)"] = "추가 발사 수 +4#눈물 딜레이 증가 없음", -- Mutant Spider
	["5.100.245 (Copies)"] = "추가 발사 수 +2", -- 20/20
	["5.100.358 (Copies)"] = "추가 발사 수 +2#방향이 더 벌어지지 않음", -- The Wiz
	["5.100.64 (Copies)"] = "중복 획득 시 모든 상점 아이템의 가격이 무료가 됩니다.", -- Steam Sale
	["5.100.118 (Copies)"] = "추가 혈사 +1", -- Brimstone
	["5.100.224 (Copies)"] = "!!! 추가 이동속도 -0.2", -- Kidney Stone


	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Brown Nugget의 파리도 제거되어 픽업으로 변환됨",
	["Sacrificial Conception"] = "{1}의 패밀리어도 제거되나 다시 생깁니다.",
	["Sacrificial Angels"] = "{1}: 희생 시 블랙하트 2개 드랍",
	["Sacrificial Void"] = "흡수 시 중복 사용 가능",

	["5.100.116 (1 Room)"] = "1칸짜리 액티브 아이템의 경우 {{ColorOrange}}적이 있는 방에서{{CR}} 15초의 충전 쿨타임을 가집니다.", -- 9 Volt
	["5.100.116 (Timed)"] = "시간제 액티브 아이템의 경우 쿨타임의 절반을 보존합니다.", -- 9 Volt
	["9 Volt 1 Room"] = "{{ColorOrange}}적이 있는 방에서{{CR}} 15초의 충전 쿨타임을 가집니다.", -- Actives + 9 Volt
	["9 Volt Timed"] = "사용 후 쿨타임의 절반을 보존합니다.", -- Actives + 9 Volt
	["5.100.205 (Wafer)"] = "소모 체력이 반칸으로 감소", -- Sharp Plug + Wafer

	["Suicide 1"] = "{1}의 즉사 효과 방지 불가", -- Plan C, Damocles, Suicide King
	["Suicide 2"] = "{1}의 즉사 효과를 방지하지 않음", -- Plan C, Damocles, Suicide King

	["5.100.7"] = "{1} 효과 발동 중 {{DamageSmall}}공격력 배율 x1.5", -- Blood of the Martyr
	["5.100.34"] = "{{DamageSmall}}발동 중 공격력 배율 x1.5", -- Book of Belial
	["5.300.16"] = "{{DamageSmall}}발동 중 공격력 배율 x1.5", -- The Devil

	["5.100.81"] = "최대 체력이 소울/블랙하트인 캐릭터는 소울/블랙하트가 1칸이 됨", -- Dead Cat
	["5.100.316"] = "{1} 소지 시 순간이동 면역", -- Cursed Eye
	["5.100.260"] = "{1}의 순간이동 효과를 제거합니다.", -- Black Candle
	["Void Single Use"] = "Void로 발동 시에도 1회만 발동됨", -- Single Use Actives + Void
	["? Card Single Use"] = "?카드로 복사 시에도 제거됨", -- Single Use Actives + ? Card
	["5.300.48"] = "!!! 오류방으로 순간이동합니다.#Blank Card와 ? 카드가 제거됩니다.", -- Blank Card + Q Card
	["? + Blank Pedestal"] = "? Card + Blank Card: 오류방으로 순간하며 둘 다 제거됩니다.", -- Looking at Blank Card with ? Card
	["5.100.208"] = {20, 35, 5, 20}, -- Champion Belt + Hard Mode
	["5.100.521"] = "{{Collectible376}} 가격이 사라진 아이템은 재입고되지 않음", -- Coupon + Restock/Greed
	["Black Feather"] = "↑ {{DamageSmall}}공격력 +0.2", -- Black Feather items

	["Bulb Multiple"] = "가장 앞에 있는 액티브 아이템만 확인", -- Vibrant/Dim Bulb + Schoolbag/Pocket Actives
	["Bulb Zero"] = "최대 충전량이 없어도 발동", -- Vibrant/Dim Bulb + zero charge actives
	["5.350.101 (Timed)"] = "시간제 액티브 아이템의 경우 무효과", -- Dim Bulb + Timed Recharges
	["5.100.122"] = "{1}: 빨간하트가 1칸 이하여도 발동", -- Whore of Babylon + Eve

	["5.70.28"] = "정면과 90도 방향을 번갈아 발사합니다.", -- R U A Wizard + The Wiz
	["5.100.523"] = "{1}: 흡수 시 패시브 아이템으로 취급", -- Moving Box + Void
	["Mongo Babies"] = "{1}: 눈물 효과 복제됨", -- Mongo Baby + Baby Familiars
	["Technology 2 One Eye"] = "{1}: 눈물 공격이 나가지 않습니다.",
	["Brimstone Proptosis"] = "거리에 따른 공격력 배율 차이가 x4~x0으로 벌어짐",
	["Brimstone Ipecac"] = "혈사포와 구토제가 별개로 발사됨#공격력 +40이 혈사포에도 적용",
	["Proptosis Anti-Gravity"] = "눈물이 멈춰있는 동안 피해량이 줄어들지 않음",
	["Epic Fetus Soy Milk"] = "피해량 대폭 감소, 조준 시간이 감소하지 않음",
	["Eye of Belial Dr. Fetus"] = "적 관통만 적용, 이외 효과는 무시됨",
	["Epic Fetus Brimstone"] = "{1}이(가) 우선 적용#미사일 착탄 지점에 레이저를 10방향으로 발사합니다.",
	["Epic Fetus Mom's Knife"] = "{1}이(가) 우선 적용#미사일 착탄 지점에 칼을 10방향으로 발사합니다.",
	["Haemolacria Brimstone"] = "{1}이(가) 우선 적용#파열된 작은 눈물이 혈사포로 나갑니다.",
	["Brimstone Mom's Knife"] = "{1}이(가) 우선 적용#충전 공격 시 충전량에 비례하여 칼 여러개를 공격방향으로 같이 발사합니다.",
	["Ludovico Ipecac"] = "공격력 증가가 +4로 감소, 독 및 폭발 효과 미적용",
	["Technology Ipecac"] = "공격력 증가가 +4로 감소, 독 효과만 적용",
	["Chocolate Milk Overrides"] = "↑ {{TearsSmall}}연사 배율 x1.25", -- Should be tear delay multiplier?
	["Chocolate Milk Marked"] = "조준점 거리에 비례하여 충전 공격을 자동으로 발사합니다.",
	["Ghost Pepper Fart"] = "방귀를 뀌면 뒤에서 불꽃이 나갑니다.",
	["Damage Multiplier Stack"] = "공격력 배율은 중첩되지 않음",
	["White Poop"] = "하얀 똥이 대신 등장",
	["White Poop Chance"] = "확률적으로 하얀 똥이 대신 등장",
	["Golden Poop Chance"] = "확률적으로 황금 똥이 대신 등장",
	["5.100.483"] = "{{GoldenBomb}} 황금폭탄 소지 시 황금폭탄을 아이템 대신 소모합니다.",

	["5.300.5"] = {"{{BossRoom}} 그 스테이지의 랜덤 보스방으로 순간이동합니다."}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "보물방이 없는 경우 그 스테이지의 랜덤 방으로 순간이동합니다.", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"{{TreasureRoom}} 그 스테이지의 랜덤 보물방으로 순간이동합니다."}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"그 스테이지의 시작방으로 순간이동합니다."}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "상점이 없는 경우 그 스테이지의 랜덤 방으로 순간이동합니다.", -- IX - The Hermit (Womb and below)
}

EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "{1}: 효과 없음",
	["DoubleDamage"] = "피해량 x2",
	["5.100.8"] = {3.5, 7}, -- Brother Bobby
	["5.100.57"] = {75, 150}, -- Distant Admiration
	["5.100.67"] = {3.5, 7}, -- Sister Maggy
	["5.100.73"] = "피해량 x2", -- Cube of Meat
	["5.100.88"] = {52.5, 105}, -- Little Chubby
	["5.100.94"] = {"2", "1~2"}, -- Sack of Pennies
	["5.100.95"] = {3.5, 7}, -- Robo-Baby
	["5.100.96"] = {"3", "2~3"}, -- Little C.H.A.D.
	["5.100.98"] = {"5~6", "4~5"}, -- The Relic
	["5.100.99"] = {3.5, 7}, -- Little Gish
	["5.100.100"] = {3.5, 7}, -- Little Steven
	["5.100.107"] = {82.5, 165}, -- The Pinking Shears
	["5.100.112"] = {105, 210}, -- Guardian Angel
	["5.100.113"] = {3, 6}, -- Demon Baby
	["5.100.117"] = {4.3, 8.6}, -- Dead Bird
	["5.100.128"] = {30, 60}, -- Forever Alone
	["5.100.131"] = {"3", "2~3"}, -- Bomb Bag
	["5.100.144"] = {"3~4", "3"}, -- Bum Friend
	["5.100.155"] = {17, 34}, -- The Peeper
	["5.100.163"] = {3.5, 7}, -- Ghost Baby
	["5.100.167"] = {4, 8}, -- Harlequin Baby
	["5.100.170"] = {40, 80}, -- Daddy Longlegs
	["5.100.172"] = {225, 450}, -- Sacrificial Dagger
	["5.100.174"] = {"3~5", "6~10"}, -- Rainbow Baby
	["5.100.187"] = "피해량 x2", -- Guppy's Hairball
	["5.100.188"] = {3.5, 7, 7.5, 15}, -- Abel (includes Cain's Rep synergy)
	["5.100.206"] = {105, 210}, -- Guillotine
	["5.100.207"] = "피해량 x2", -- Ball of Bandages
	["5.100.264"] = {22.5, 45}, -- Smart Fly
	["5.100.266"] = "아군 자폭 거미 추가 소환", -- Juicy Sack
	["5.100.267"] = {3.5, 7}, -- Robo-Baby 2.0
	["5.100.270"] = {3.2, 6.4}, -- Leech
	["5.100.271"] = {"5~6", "4~5"}, -- Mystery Sack
	["5.100.272"] = {60, 85}, -- BBF
	["5.100.273"] = {60, 85}, -- Bob's Brain
	["5.100.274"] = {75, 150}, -- Best Bud
	["5.100.275"] = {31.5, 63}, -- Lil Brimstone
	["5.100.277"] = {4, 8}, -- Lil Haunt
	["5.100.279"] = {30, 60}, -- Big Fan
	["5.100.318"] = {6, 12}, -- Gemini
	["5.100.319"] = {"캐릭터의 공격력", "캐릭터의 공격력 x2{{CR}}"}, -- Cain's Other Eye
	["5.100.320"] = {37.5, 75}, -- ???'s Only Friend
	["5.100.321"] = {10.7, 21.4}, -- Samson's Chains
	["5.100.322"] = {3.5, 7}, -- Mongo Baby
	["5.100.325"] = {3.5, 7}, -- Scissors
	["5.100.360"] = "피해량 x2", -- Incubus
	["5.100.361"] = "피해량 x2", -- Fate's Reward
	["5.100.362"] = {35, 44}, -- Lil Chest
	["5.100.363"] = {105, 210}, -- Sworn Protector
	["5.100.364"] = {45, 90}, -- Friend Zone
	["5.100.365"] = {105, 210}, -- Lost Fly
	["5.100.372"] = "배터리 드랍 확률 증가", -- Charged Baby
	["5.100.384"] = {"5~90", "10~180"}, -- Lil Gurdy
	["5.100.385"] = "피해량 x2", -- Bumbo
	["5.100.388"] = "상자 드랍 빈도 증가", -- Key Bum
	["5.100.389"] = {"5~6", "4~5"}, -- Rune Bag
	["5.100.390"] = {10, 20}, -- Seraphim
	["5.100.403"] = "배터리 드랍 확률 증가", -- Spider Mod
	["5.100.405"] = {120, 240}, -- GB Bug
	["5.100.417"] = "오라 범위만 증가", -- Succubus
	["5.100.426"] = {30, 60}, -- Obsessed Fan
	["5.100.430"] = {"캐릭터의 공격력", "캐릭터의 공격력 x2{{CR}}"}, -- Papa Fly
	["5.100.435"] = {3.5, 7}, -- Lil Loki
	["5.100.468"] = {30, 60}, -- Shade
	["5.100.470"] = {30, 60}, -- Hushy
	["5.100.471"] = {3.5, 7}, -- Lil Monstro
	["5.100.473"] = {40.5, 81}, -- Big Chubby
	["5.100.491"] = {"3", "2~3"}, -- Acid Baby
	["5.100.500"] = {"5~6", "4~5"}, -- Sack of Sacks
	["5.100.508"] = {3, 6}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 30, 60}, -- Bloodshot Eye
	["5.100.511"] = {30, 60}, -- Angry Fly
	["5.100.518"] = "피해량 x2", -- Buddy in a Box
	["5.100.519"] = "피해량 x2", -- Lil Delirium
	["5.100.525"] = {35, 70}, -- Leprosy
	["5.100.526"] = "기사의 접촉 피해량 x2", -- 7 Seals
	["5.100.537"] = "장판의 크기만 증가", -- Lil Spewer
	["5.100.539"] = "소환되는 아군이 챔피언으로 등장", -- Mystery Egg
	["5.100.544"] = {6, 12}, -- Pointy Rib
	["5.100.545"] = "뼛조각 배리어의 피해량 x2", -- Book of the Dead
	["5.100.548"] = {7, 14}, -- Jaw Bone

	["5.350.54"] = {3.5, 7}, --- Isaac's Head
	["5.350.57"] = {3.5, 7}, --- ???'s Soul
	["Lilith"] = "Incubus의 피해량 x2", -- Incubus (for BFFS pedestal)
}


-- TODO: make these more consistent with other descs, add icons, and is there any traits of the characters missing?
-- Soon, these descriptions, along with their starting item descriptions, will be in a tab in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Isaac", ""},
	[1] = {"Magdalene", ""},
	[2] = {"Cain", ""},
	[3] = {"Judas", ""},
	[4] = {"???", "{{SoulHeart}} 최대 체력 = 소울하트의 보정을 받습니다."},
	[5] = {"Eve", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "{{Collectible118}} 검은 날개로 날 수 있으며 사거리가 매우 짧은 혈사포를 발사합니다."},
	[8] = {"Lazarus", "{{Collectible332}} 사망 시 그 방에서 최대 체력 1칸으로 부활합니다."},
	[9] = {"Eden", "모든 능력치 및 시작 아이템이 랜덤으로 정해집니다."},
	[10] = {"The Lost", "지형 관통 공격 + 날아다닐 수 있으나 체력이 없어 한 번 맞으면 사망합니다.#{{DevilRoom}} 모든 악마 거래를 체력 상관없이 획득할 수 있습니다."},
	[11] = {"Lazarus Risen", "부활 이후의 나사로로 능력치가 증가되어 있습니다."},
	[12] = {"Dark Judas", "{{DamageSmall}} 공격력 배율 x2#{{Player3}} 체크리스트는 Judas로 클리어한 것으로 인정됩니다."},
	[13] = {"Lilith", "{{Collectible360}} 공격할 수 없으며 모든 공격을 Incubus가 대신해 줍니다."},
	[14] = {"Keeper", "{{CoinHeart}} 체력이 하트가 아닌 코인으로 이루어져 있으며 2칸의 상한을 가집니다.#동전으로 체력 회복 가능#하트 픽업이 자폭 파리로 바뀝니다."},
	[15] = {"Apollyon", ""},
	[16] = {"The Forgotten", "{{Chargeable}} 공격 키로 뼈를 휘두르며 충전 시 충전 거리만큼 뼈다귀를 부메랑처럼 던질 수 있습니다.#{{BoneHeart}} 최대 체력 = 뼈하트의 보정을 받으며 6칸의 상한을 가집니다.#{{ButtonRT}} (Ctrl)키로 영혼과 교체할 수 있으며 영혼은 지형 관통 눈물을 발사합니다.{{SoulHeart}} 최대 체력 = 소울하트의 보정을 받으며 6칸의 상한을 가집니다.#영혼은 날아다닐 수 있으나 본체로부터 멀리 떨어질 수 없습니다."},
	[17] = {"The Forgotten Soul", "{{Chargeable}} 공격 키로 뼈를 휘두르며 충전 시 충전 거리만큼 뼈다귀를 부메랑처럼 던질 수 있습니다.#{{BoneHeart}} 최대 체력 = 뼈하트의 보정을 받으며 6칸의 상한을 가집니다.#{{ButtonRT}} (Ctrl)키로 영혼과 교체할 수 있으며 영혼은 지형 관통 눈물을 발사합니다.{{SoulHeart}} 최대 체력 = 소울하트의 보정을 받으며 6칸의 상한을 가집니다.#영혼은 날아다닐 수 있으나 본체로부터 멀리 떨어질 수 없습니다."},
}
