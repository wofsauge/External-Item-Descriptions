-- This file contains text elements that are used for the modular description system.
local languageCode = "vi"
EID.descriptions[languageCode].AdditionalInformations = {}

-- List of description IDs to ignore for fully automated descriptions
EID.descriptions[languageCode].IgnoreFullyAutomatedDescriptions = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Hệ số nước mắt",
    Tears = "{value} Nước mắt",
    TearHeight = "{value} Tốc độ rơi nước mắt",
    TearSizeMultiplier = "{value} Kích thước nước mắt",
    TearSize = "{value} Kích thước nước mắt",
    TearDelayMultiplier = "{value} Hệ số độ trễ nước mắt",
    TearDelay = "{value} Độ trễ nước mắt",
    FireRateMultiplier = "{value} Hệ số tốc độ bắn",
    FireRate = "{value} Tốc độ bắn",
    DamageMultiplier = "{value} Hệ số sát thương",
    Damage = "{value} Sát thương",
	DamageTemp = "{value} Sát thương (tạm thời)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Sát thương bom",
    Speed = "{value} Tốc độ",
    RangeMultiplier = "{value} Hệ số tầm bắn",
    Range = "{value} Tầm bắn",
    Luck = "{value} May mắn",
    ShotSpeedMultiplier = "{value} Hệ số tốc độ đạn",
    ShotSpeed = "{value} Tốc độ đạn",
    Life = "{value} Mạng",
    SizeUp = "Tăng kích thước",
    SizeDown = "Giảm kích thước",
    Flight = "Bay được",
    Invincibility = "Bất tử",
    RandomStatUp = "↑ Tăng {value} chỉ số ngẫu nhiên",
    RandomStatDown = "↓ Giảm {value} chỉ số ngẫu nhiên",

    -- Health related
    RedHeart = "{value} Máu",
    SoulHeart = "{value} Trái Tim Linh Hồn",
    BlackHeart = "{value} Trái Tim Đen",
    BoneHeart = "{value} Trái Tim Xương",
    EternalHeart = "{value} Trái Tim Vĩnh cửu",
    GoldenHeart = "{value} Trái Tim Vàng",
    RottenHeart = "{value} Trái Tim Thối",
    BrokenHeart = "{value} Trái Tim Vỡ",
    EmptyHeart = "{value} Ô trái tim trống",
    FullHealth = "Đầy máu",
    HealingRed = "Hồi {value} trái tim",
    CoinHeart = "{value} Trái Tim Đồng Xu",
    EmptyCoinHeart = "{value} Ô Trái Tim Đồng Xu trống",
    HealingCoin = "Hồi {value} đồng xu",

    -- Room chances
    AngelDevilChance = "{value}% Cơ hội Phòng Quỷ/Thiên thần",
    DevilChance = "{value}% Cơ hội Phòng Quỷ",
    AngelChance = "{value}% Cơ hội Phòng Thiên thần",
    PlanetariumChance = "{value}% Cơ hội Phòng Thiên Văn",

    -- Pickups / Spawns
    Coin = "{value} Đồng xu",
    Bomb = "{value} Bom",
    Key = "{value} Chìa khóa",
    CoinBombKey = "{value} {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Tạo {value} vật phẩm nhặt ngẫu nhiên",
        RandomTrinket = "Tạo {value} món trang sức ngẫu nhiên",
        RandomHeart = "Tạo {value} trái tim ngẫu nhiên",
        RedHeart = "Tạo {value} Trái Tim Đỏ",
        SoulHeart = "Tạo {value} Trái Tim Linh Hồn",
        BlackHeart = "Tạo {value} Trái Tim Đen",
        BoneHeart = "Tạo {value} Trái Tim Xương",
        Bomb = "Tạo {value} bom",
        Key = "Tạo {value} chìa khóa",
        Coin = "Tạo {value} đồng xu",
        RandomCoin = "Tạo {value} đồng xu ngẫu nhiên",
        Card = "Tạo {value} lá bài",
        Pill = "Tạo {value} viên thuốc",
        Rune = "Tạo {value} rune",
        Battery = "Tạo {value} Pin",
        BlueFly = "Tạo {value} ruồi xanh",
        BlueSpider = "Tạo {value} nhện xanh",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Nước mắt tự dẫn đường",
        Spectral = "Nước mắt xuyên tường",
        Piercing = "Nước mắt xuyên thấu",
        Poison = "{{Poison}} Nước mắt độc",
    },
    -- Familiars
    FlyOrbital = "{value} Vệ tinh ruồi",
    Orbital = "Vệ tinh",
    BlockProjectiles = "Chặn đạn của kẻ địch",
    DamagePerTear = "Gây {value} sát thương mỗi nước mắt",
    DamagePerShot = "Gây {value} sát thương mỗi phát",
    DamagePerSecond = "Gây {value} sát thương mỗi giây",
    ContactDamagePerSecond = "Gây {value} sát thương tiếp xúc mỗi giây",
    MimicMovement = "Bắt chước chuyển động của Isaac sau {value} giây",
    -- Player
    CantShoot = "Isaac không thể bắn",
    PlayerContactDamage = "Isaac gây {value} sát thương tiếp xúc mỗi giây",
    DamageToAllEnemies = "Gây {value} sát thương cho tất cả kẻ địch",
    -- Misc
    LeftEye = "Nhận cho mắt trái:",
    RightEye = "Nhận cho mắt phải:",
    RoomEffect = "{{Timer}} Nhận trong phòng:",
    TimedEffect = "{{Timer}} Nhận trong {value} giây:",
    OnUseEffect = "Khi sử dụng:",
    HeldEffect = "Khi cầm:",
    MaxLuck = "{{Luck}} Tối đa ({max}%) ở {value} may mắn",
    SingleUseInfo = "{{Warning}} CHỈ DÙNG MỘT LẦN {{Warning}}",
    NoEffect = "Không có hiệu ứng",
    FullMapping = {
        BaseDesc = "{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng {exception}",
        Exception = "(trừ {{SuperSecretRoom}} Phòng Bí mật Siêu cấp)"
    }
}
