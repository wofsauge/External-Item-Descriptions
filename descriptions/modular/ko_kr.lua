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
    FireRateMultiplier = "연사 배율 {value}", -- All fire rate mult items also modify tears cap, so no need to mention
    FireRate = "연사(+상한) {value}", -- Must mention tears cap
    DamageMultiplier = "공격력 배율 {value}",
    Damage = "공격력 {value}",
		DamageTemp = "증발성 공격력 {value}", -- For Temp Binge Eater buffs
    BombDamage = "폭탄 피해량 {value}",
    Speed = "이동속도 {value}",
    RangeMultiplier = "사거리 배율 {value}",
    Range = "사거리 {value}",
    Luck = "행운 {value}",
    ShotSpeedMultiplier = "탄속 {value}",
    ShotSpeed = "탄속 {value}",
    Life = "추가 목숨 {value}",
    SizeUp = "캐릭터 크기 증가",
    SizeDown = "캐릭터 크기 감소",
    Flight = "비행 능력을 얻습니다",
    Invincibility = "캐릭터가 무적 상태가 됩니다.",
    RandomStatUp = "↑ 무작위 능력치 {value}개 증가",
    RandomStatDown = "↓ 무작위 능력치 {value}개 감소",

    -- Health related
    RedHeart = "최대 체력 {value}",
    SoulHeart = "소울하트 {value}",
    BlackHeart = "블랙하트 {value}",
    BoneHeart = "뼈하트 {value}",
    EternalHeart = "이터널하트 {value}",
    GoldenHeart = "황금하트 {value}",
    RottenHeart = "썩은하트 {value}",
    BrokenHeart = "부서진하트 {value}",
    EmptyHeart = "빈 최대 체력 {value}",
    FullHealth = "체력을 모두 회복합니다.",
    HealingRed = "체력을 {value}칸 회복합니다.",
    CoinHeart = "코인하트 {value}",
    EmptyCoinHeart = "빈 코인하트 {value}",
    HealingCoin = "체력을 {value}칸 회복합니다.", -- same as HealingRed

    -- Room chances
    AngelDevilChance = "악마/천사방 확률 {value}% ",
    DevilChance = "악마방 확률 {value}%",
    AngelChance = "천사방 확률 {value}% ",
    PlanetariumChance = "천체관 확률 {value}% ",

    -- Pickups / Spawns
    Coin = "동전 {value}",
    Bomb = "폭탄 {value}",
    Key = "열쇠 {value}",
    CoinBombKey = "{{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 {value}",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "랜덤 픽업을 {value}개 드랍합니다.",
        RandomTrinket = "랜덤 장신구를 {value}개 드랍합니다.",
        RandomHeart = "랜덤 하트를 {value}개 드랍합니다.",
        RedHeart = "빨간하트를 {value}개 드랍합니다.",
        SoulHeart = "소울하트를 {value}개 드랍합니다.",
        BlackHeart = "블랙하트를 {value}개 드랍합니다.",
        BoneHeart = "뼈하트를 {value}개 드랍합니다.",
        Bomb = "폭탄을 {value}개 드랍합니다.",
        Key = "열쇠를 {value}개 드랍합니다.",
        Coin = "동전을 {value}개 드랍합니다.",
        RandomCoin = "랜덤 동전을 {value}개 드랍합니다.",
        Card = "카드를 {value}장 드랍합니다.",
        Pill = "알약을 {value}개 드랍합니다.",
        Rune = "룬을 {value}개 드랍합니다.",
        Battery = "배터리를 {value}개 드랍합니다.",
        BlueFly = "파란 아군 파리를 {value}마리 소환합니다.",
        BlueSpider = "파란 아군 거미를 {value}마리 소환합니다.",
    },

    -- Permanent Tear Effects
    TearEffect = {
        Homing = "공격에 유도 효과가 생깁니다.", -- Should follow Spoon Bender
        Spectral = "공격이 장애물을 관통합니다.", -- Should follow Ouija Board
        Piercing = "공격이 적을 관통합니다.", -- Should follow Cupid's Arrow
        Poison = "{{Poison}} 공격에 독성이 생깁니다.",
    },

    -- Familiars
    FlyOrbital = "파리 배리어 {value}",
    Orbital = "캐릭터의 주변을 돕니다.",
    BlockProjectiles = "적 탄환을 막아줍니다.",
    DamagePerTear = "공격력 {value}의 눈물을 발사합니다.", -- Only tear familiars use this now, so should follow Sister's Maggy
    DamagePerShot = "공격력 {value}의 레이저를 발사합니다.", -- Only laser familiars use this now, so should follow Robo-Baby
    DamagePerSecond = "초당 {value}의 피해를 줍니다.",
    ContactDamagePerSecond = "접촉 시 초당 {value}의 피해를 줍니다.",
    MimicMovement = "캐릭터가 지나간 길을 {value}초 후 따라옵니다.", -- Should follow Shade

    -- Player
    CantShoot = "공격 불가",
    PlayerContactDamage = "캐릭터 접촉 시 초당 {value}의 피해를 줍니다.",
    DamageToAllEnemies = "그 방의 적에게 {value}의 피해를 줍니다.",

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
    FullMapping = { -- BaseDesc should follow The Mind/Ansuz, Exception should follow The World, Crystal Ball
        BaseDesc = "{{Timer}} 맵에 {{UltraSecretRoom}} 특급비밀방{exception}을 제외한 모든 방의 위치가 표시됩니다.",
        Exception = ", {{SuperSecretRoom}} 일급비밀방",
    }
}
