-- This file contains text elements that are used for the modular description system.
local languageCode = "ko_kr"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "연사 {value}",
    Tears = "연사 {value}",
    TearHeight = "눈물 높이 {value}",
    TearSizeMultiplier = "눈물크기 {value}",
    TearSize = "눈물크기 {value}",
    TearDelayMultiplier = "눈물 딜레이 {value}",
    TearDelay = "눈물 딜레이 {value}",
    FireRateMultiplier = "연사 배율 {value}",
    FireRate = "연사 {value}",
    DamageMultiplier = "공격력 배율 {value}",
    Damage = "공격력 {value}",
	DamageTemp = "공격력 {value} (일시적)", -- For Temp Binge Eater buffs
    BombDamage = "폭탄 공격력 {value}",
    Speed = "이동속도 {value}",
    RangeMultiplier = "사거리 배율 {value}",
    Range = "사거리 {value}",
    Luck = "행운 {value}",
    ShotSpeedMultiplier = "탄속 {value}",
    ShotSpeed = "탄속 {value}",
    Life = "목숨 {value",
    SizeUp = "크기 증가",
    SizeDown = "크기 감소",
    Flight = "비행 능력을 얻습니다",
    Invincibility = "무적 상태",
    RandomStatUp = "↑ 무작위 능력치 {value}개 증가",
    RandomStatDown = "↓ 무작위 능력치 {value}개 감소",

    -- Health related
    RedHeart = "빨간하트 {value}",
    SoulHeart = "소울하트 {value}",
    BlackHeart = "블랙하트 {value}",
    BoneHeart = "뼈하트 {value}",
    EternalHeart = "이터널하트 {value}",
    GoldenHeart = "황금하트 {value}",
    RottenHeart = "썩은하트 {value}",
    BrokenHeart = "부서진하트 {value}",
    EmptyHeart = "빈 최대 체력 {value}",
    FullHealth = "체력을 모두 회복합니다.",
    HealingRed = "체력 {value}칸 회복",
    CoinHeart = "동전하트 {value}",
    EmptyCoinHeart = "빈 동전하트 {value}",
    HealingCoin = "동전 {value}개 회복",

    -- Room chances
    AngelDevilChance = "악마/천사방 확률 {value}% ",
    DevilChance = "악마방 확률 {value}%",
    AngelChance = "천사방 확률 {value}% ",
    PlanetariumChance = "천체관 확률 {value}% ",

    -- Pickups / Spawns
    Coin = "동전 {value}",
    Bomb = "폭탄 {value}",
    Key = "열쇠 {value}",
    CoinBombKey = "{value} {{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "랜덤 픽업 {value}개 드랍합니다",
        RandomTrinket = "랜덤 장신구 {value}개 드랍합니다",
        RandomHeart = "랜덤 하트 {value}개 드랍합니다",
        RedHeart = "빨간하트 {value}개 드랍합니다",
        SoulHeart = "소울하트 {value}개 드랍합니다",
        BlackHeart = "블랙하트 {value}개 드랍합니다",
        BoneHeart = "뼈하트 {value}개 드랍합니다",
        Bomb = "폭탄 {value}개 드랍합니다",
        Key = "열쇠 {value}개 드랍합니다",
        Coin = "동전 {value}개 드랍합니다",
        RandomCoin = "랜덤 동전 {value}개 드랍합니다",
        Card = "카드 {value}장 드랍합니다",
        Pill = "알약 {value}개 드랍합니다",
        Rune = "룬 {value}개 드랍합니다",
        Battery = "배터리 {value}개 드랍합니다",
        BlueFly = "파란 아군 파리 {value}마리 소환합니다",
        BlueSpider = "파란 아군 거미 {value}마리 소환합니다",
    },

    -- Permanent Tear Effects
    TearEffect = {
        Homing = "유도 눈물",
        Spectral = "장애물 관통 눈물",
        Piercing = "관통 눈물",
        Poison = "{{Poison}} 독 눈물",
    },

    -- Familiars
    FlyOrbital = "{value} 파리 배리어",
    Orbital = "배리어",
    BlockProjectiles = "적 탄환을 막아줍니다",
    DamagePerTear = "눈물 한 발당 {value}의 피해를 줍니다",
    DamagePerShot = "한 발당 {value}의 피해를 줍니다",
    DamagePerSecond = "초당 {value}의 피해를 줍니다",
    ContactDamagePerSecond = "접촉 시 초당 {value}의 피해를 줍니다",
    MimicMovement = "캐릭터의 이동을 {value}초 지연하여 따라갑니다",

    -- Player
    CantShoot = "공격 불능",
    PlayerContactDamage = "캐릭터 접촉 시 초당 {value}의 피해를 줍니다",
    DamageToAllEnemies = "방 전체 적에게 {value}의 피해를 줍니다",

    -- Misc
    LeftEye = "왼쪽 눈 효과:",
    RightEye = "오른쪽 눈 효과:",
    RoomEffect = "{{Timer}} 그 방에서:",
    TimedEffect = "{{Timer}} {value}초 동안:",
    OnUseEffect = "사용 시:",
    HeldEffect = "소지중일 때:",
    MaxLuck = "{{Luck}} {value}: 확률 {max}%",
    SingleUseInfo = "{{Warning}} 일회용 {{Warning}}",
    NoEffect = "무효과",
    FullMapping = {
        BaseDesc = "{{Timer}} 스테이지 전체 맵 표시 효과 {exception}",
        Exception = "({{SuperSecretRoom}} 일급비밀방 제외)"
    }
}
