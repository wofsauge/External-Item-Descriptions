-- This file contains text elements that are used for the modular description system.
local languageCode = "zh_cn"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "射速修正 {value}",
    Tears = "射速 {value}",
    TearHeight = "泪弹高度 {value}",
    TearSizeMultiplier = "泪弹尺寸 {value}",
    TearSize = "泪弹尺寸 {value}",
    TearDelayMultiplier = "射击延迟 {value}",
    TearDelay = "射击延迟 {value}",
    FireRateMultiplier = "发射速率修正 {value}",
    FireRate = "发射速率 {value}",
    DamageMultiplier = "伤害修正 {value}",
    Damage = "伤害 {value}",
	DamageTemp = "伤害 {value}（临时）", -- For Temp Binge Eater buffs
    BombDamage = "炸弹伤害 {value}",
    Speed = "移速 {value}",
    RangeMultiplier = "射程修正 {value}",
    Range = "射程 {value}",
    Luck = "幸运 {value}",
    ShotSpeedMultiplier = "弹速修正 {value}",
    ShotSpeed = "弹速 {value}",
    Life = "生命 {value}",
    SizeUp = "体型变大",
    SizeDown = "体型变小",
    Flight = "飞行",
    Invincibility = "无敌",
    RandomStatUp = "↑ 随机提升 {value} 项属性",
    RandomStatDown = "↓ 随机降低 {value} 项属性",

    -- Health related
    RedHeart = "{value} 心之容器",
    SoulHeart = "{value} 魂心",
    BlackHeart = "{value} 黑心",
    BoneHeart = "{value} 骨心",
    EternalHeart = "{value} 永恒之心",
    GoldenHeart = "{value} 金心",
    RottenHeart = "{value} 腐心",
    BrokenHeart = "{value} 失去的心",
    EmptyHeart = "{value} 空心之容器",
    FullHealth = "回满血",
    HealingRed = "治疗 {value} 红心",
    CoinHeart = "{value} 硬币心容器",
    EmptyCoinHeart = "{value} 空硬币心容器",
    HealingCoin = "治疗 {value} 硬币",

    -- Room chances
    AngelDevilChance = "{value}% 恶魔房/天使房概率",
    DevilChance = "{value}% 恶魔房概率",
    AngelChance = "{value}% 天使房概率",
    PlanetariumChance = "{value}% 天象房概率",

    -- Pickups / Spawns
    Coin = "{value} 硬币",
    Bomb = "{value} 炸弹",
    Key = "{value} 钥匙",
    CoinBombKey = "{value} {{Coin}} 硬币、{{Bomb}} 炸弹 和 {{Key}} 钥匙",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "生成 {value} 个随机掉落物",
        RandomTrinket = "生成 {value} 个随机饰品",
        RandomHeart = "生成 {value} 个随机心",
        RedHeart = "生成 {value} 个红心",
        SoulHeart = "生成 {value} 个魂心",
        BlackHeart = "生成 {value} 个黑心",
        BoneHeart = "生成 {value} 个骨心",
        Bomb = "生成 {value} 个炸弹",
        Key = "生成 {value} 个钥匙",
        Coin = "生成 {value} 个硬币",
        RandomCoin = "生成 {value} 个随机硬币",
        Card = "生成 {value} 张卡牌",
        Pill = "生成 {value} 个胶囊",
        Rune = "生成 {value} 个符文",
        Battery = "生成 {value} 个电池",
        BlueFly = "生成 {value} 只蓝苍蝇",
        BlueSpider = "生成 {value} 只蓝蜘蛛",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "追踪泪弹",
        Spectral = "灵体泪弹",
        Piercing = "穿刺泪弹",
        Poison = "{{Poison}} 有毒泪弹",
    },
    -- Familiars
    FlyOrbital = "{value} 苍蝇环绕物",
    Orbital = "环绕物",
    BlockProjectiles = "阻挡弹幕",
    DamagePerTear = "每颗泪弹造成 {value} 点伤害",
    DamagePerShot = "每次射击造成 {value} 点伤害",
    DamagePerSecond = "每秒造成 {value} 点伤害",
    ContactDamagePerSecond = "每秒造成 {value} 点接触伤害",
    MimicMovement = "以 {value} 秒延迟模仿以撒的移动",
    -- Player
    CantShoot = "角色无法发射",
    PlayerContactDamage = "角色每秒造成 {value} 点接触伤害",
    DamageToAllEnemies = "对所有敌人造成 {value} 点伤害",
    -- Misc
    LeftEye = "左眼获得:",
    RightEye = "右眼获得:",
    RoomEffect = "{{Timer}} 在当前房间获得:",
    TimedEffect = "{{Timer}} 在 {value} 秒内获得:",
    OnUseEffect = "使用后:",
    HeldEffect = "持有时:",
    MaxLuck = "{{Luck}} 在 {value} 幸运时达到最大值({max}%)",
    SingleUseInfo = "{{Warning}} 一次性 {{Warning}}",
    NoEffect = "无效果",
    FullMapping = {
        BaseDesc = "{{Timer}} 本层获得完整的地图效果 {exception}",
        Exception = "({{SuperSecretRoom}} 超级隐藏房除外)"
    }
}
