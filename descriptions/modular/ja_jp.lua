-- This file contains text elements that are used for the modular description system.
local languageCode = "ja_jp"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "連射速度　 {value}",
    Tears = "連射速度　 {value}",
    TearHeight = "涙の高さ　 {value}",
    TearSizeMultiplier = "涙のサイズ　 {value}",
    TearSize = "涙のサイズ　 {value}",
    TearDelayMultiplier = "連射間隔　 {value}",
    TearDelay = "連射間隔　 {value}",
    FireRateMultiplier = "攻撃速度の倍率　 {value}",
    FireRate = "攻撃速度　 {value}",
    DamageMultiplier = "攻撃力　 {value}",
    Damage = "攻撃力　 {value}",
	DamageTemp = "攻撃力　 {value}（一時的）", -- For Temp Binge Eater buffs
    BombDamage = "爆弾ダメージ　 {value}",
    Speed = "移動速度　 {value}",
    RangeMultiplier = "射程　 {value}",
    Range = "射程　 {value}",
    Luck = "運　 {value}",
    ShotSpeedMultiplier = "弾速　 {value}",
    ShotSpeed = "弾速 {value}",
    Life = "体力 {value}",
    SizeUp = "サイズ増加",
    SizeDown = "サイズ減少",
    Flight = "飛行",
    Invincibility = "無敵",
    RandomStatUp = "↑ ランダムに {value} ステータス上昇",
    RandomStatDown = "↓ ランダムに {value} ステータス低下",

    -- Health related
    RedHeart = "最大体力 {value}",
    SoulHeart = "青ハート {value}",
    BlackHeart = "黒ハート {value}",
    BoneHeart = "骨ハート {value}",
    EternalHeart = "白ハート {value}",
    GoldenHeart = "金ハート {value}",
    RottenHeart = "腐ったハート {value}",
    BrokenHeart = "壊れたハート {value}",
    EmptyHeart = "空のハート容器 {value}",
    FullHealth = "体力満タン",
    HealingRed = "{value} ハートを回復",
	CoinHeart = "コインの健康状態 {value}",
	EmptyCoinHeart = "{value} 枚の空のコインの体力",
	HealingCoin = "{value} コイン分の体力を回復",

    -- Room chances
    AngelDevilChance = "悪魔部屋／天使部屋の 出現率 {value}%",
    DevilChance = "悪魔部屋の出現率 {value}%",
    AngelChance = "天使部屋の 出現率 {value}%",
    PlanetariumChance = "の確率でプラネタリウム {value}% ",

    -- Pickups / Spawns
    Coin = "{value} コイン",
    Bomb = "{value} 爆弾",
    Key = "{value} 鍵",
    CoinBombKey = "{value} {{Coin}} コイン, {{Bomb}} 爆弾 と {{Key}} 鍵",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "{value} 個のランダムなピックアップをスポーン",
        RandomTrinket = "{value} 個のランダムなトリンケットをスポーン",
        RandomHeart = "{value} 個のランダムなハートをスポーン",
        RedHeart = "{value} 個の赤ハートをスポーン",
        SoulHeart = "{value} 個の青ハートをスポーン",
        BoneHeart = "{value} 個の骨ハートをスポーン",
        Bomb = "{value} 個の爆弾をスポーン",
        Key = "{value} 個の鍵をスポーン",
        Coin = "{value} 枚のコインをスポーン",
        RandomCoin = "{value} 枚のランダムなコインをスポーン",
        Card = "{value} 枚のカードをスポーン",
        Pill = "{value} 個のピルをスポーン",
        Rune = "{value} 個のルーンをスポーン",
        Battery = "{value} 個の電池をスポーン",
        BlueFly = "{value} 匹の青いハエをスポーン",
        BlueSpider = "{value} 匹の青クモをスポーン",
    },

    -- Permanent Tear Effects
    TearEffect = {
        Homing = "涙にホーミング効果を付与",
        Spectral = "スペクトラルの涙",
        Piercing = "貫通する涙",
        Poison = "{{Poison}} 毒の涙",
    },

    -- Familiars
    FlyOrbital = "{value} 匹のオービタルハエ",
    Orbital = "オービタル",
    BlockProjectiles = "敵の弾をブロックする",
    DamagePerTear = "涙1発につき {value} ダメージを与える",
    DamagePerShot = "1 発の射撃につき {value} ダメージを与える",
    DamagePerSecond = "秒間 {value} ダメージを与える",
    ContactDamagePerSecond = "秒間 {value} の接触ダメージを与える",
    MimicMovement = "アイザックの動きを {value} 秒遅れで模倣する",

    -- Player
    CantShoot = "アイザックは攻撃できない",
    PlayerContactDamage = "アイザックが接触すると秒間 {value} ダメージを与える",
    DamageToAllEnemies = "全ての敵に {value} ダメージを与える",

    -- Misc
    LeftEye = "左目に付与：",
    RightEye = "右目に付与：",
    RoomEffect = "{{Timer}} 部屋に付与：",
    TimedEffect = "{{Timer}} {value} 秒間付与：",
    OnUseEffect = "使用時：",
    HeldEffect = "所持中：",
    MaxLuck = "{{Luck}} 確率：運{value}で{max}%",
    SingleUseInfo = "{{Warning}} 使い切りアイテム {{Warning}}",
    NoEffect = "効果なし",
    FullMapping = {
        BaseDesc = "{{Timer}} フロアを完全にマップ表示 {exception}",
        Exception = "(ただし {{SuperSecretRoom}} スーパーミステリールームを除く)"
    }
}
