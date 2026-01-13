-- This file contains text elements that are used for the modular description system.
local languageCode = "tr_tr"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    TearsMultiplier = "{value} Gözyaşı",
    Tears = "{value} Gözyaşı",
    TearHeight = "{value} Gözyaşı yüksekliği",
    TearSizeMultiplier = "{value} Gözyaşı boyutu",
    TearSize = "{value} Gözyaşı boyutu",
    TearDelayMultiplier = "{value} Gözyaşı gecikmesi",
    TearDelay = "{value} Gözyaşı gecikmesi",
    FireRateMultiplier = "{value} Atış hızı",
    FireRate = "{value} Atış hızı",
    DamageMultiplier = "{value} Hasar",
    Damage = "{value} Hasar",
	DamageTemp = "{value} Hasar (geçici)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Bomba hasarı",
    Speed = "{value} Hız",
    RangeMultiplier = "{value} Menzil",
    Range = "{value} Menzil",
    Luck = "{value} Şans",
    ShotSpeedMultiplier = "{value} Gözyaşı hızı",
    ShotSpeed = "{value} Gözyaşı hızı",
    Life = "{value} hayat",
    SizeUp = "Boy artar",
    SizeDown = "Boy küçülür",
    Flight = "Uçuş",
    Invincibility = "Dokunulmazlık",
    RandomStatUp = "↑ Rastgele {value} istatistik artışı",
    RandomStatDown = "↓ Rastgele {value} istatistik azalır",

    RedHeart = "{value} Kırmızı Kalp",
    SoulHeart = "{value} Ruh Kalbi",
    BlackHeart = "{value} Siyah Kalp",
    BoneHeart = "{value} Kemik Kalp",
    EternalHeart = "{value} Ebedi Kalp",
    GoldenHeart = "{value} Altın Kalp",
    RottenHeart = "{value} Çürük Kalp",
    BrokenHeart = "{value} Kırık Kalp",
    EmptyHeart = "{value} Boş kalp konteynırı",
    FullHealth = "Tam can",
    HealingRed = "{value} Kalp iyileştirir",
    CoinHeart = "{value} Altın Kalp",
    EmptyCoinHeart = "{value} Boş Altın Kalp",
    HealingCoin = "{value} Altın iyileştirir",

    AngelDevilChance = "{value}% Şeytan/Melek odası şansı",
    DevilChance = "{value}% Şeytan odası şansı",
    AngelChance = "{value}% Melek odası şansı",
    PlanetariumChance = "{value}% Planetaryum şansı",

    Coin = "{value} Altın",
    Bomb = "{value} Bomba",
    Key = "{value} Anahtar",
    CoinBombKey = "{value} {{Coin}} Altın, {{Bomb}} Bomba ve {{Key}} Anahtar",
    Spawns = {
        RandomPickup = "Rastgele {value} pickup çıkartır",
        RandomTrinket = "Rastgele {value} trinket çıkartır",
        RandomHeart = "Rastgele {value} kalp çıkarır",
        RedHeart = "Rastgele {value} Kırmızı Kalp",
        SoulHeart = "Rastgele {value} Ruh Kalbi",
        BlackHeart = "Rastgele {value} Siyah Kalp",
        BoneHeart = "Rastgele {value} Kemik Kalp",
        Bomb = "Rastgele {value} Bomba",
        Key = "Rastgele {value} Anahtar",
        Coin = "Rastgele {value} Altın",
        RandomCoin = "Rastgele {value} coin çıkarır",
        Card = "Rastgele {value} Kart",
        Pill = "Rastgele {value} Hap",
        Rune = "Rastgele {value} Rune",
        Battery = "Rastgele {value} Pil",
        BlueFly = "Rastgele {value} mavi sinek",
        BlueSpider = "Rastgele {value} mavi örümcek",
    },

    TearEffect = {
        Homing = "Takip eden gözyaşları",
        Spectral = "Hayalet gözyaşları",
        Piercing = "Delici gözyaşları",
        Poison = "{{Poison}} Zehir gözyaşları",
    },

    FlyOrbital = "{value} Sinek yörüngeci",
    Orbital = "Yörüngeç",
    BlockProjectiles = "Düşman ateşlerini engeller",
    DamagePerTear = "Gözyaşı başına {value} Hasar",
    DamagePerShot = "Atış başına {value} hasar",
    DamagePerSecond = "Saniyede {value} hasar verir",
    ContactDamagePerSecond = "Saniyede {value} dokunma hasarı verir",
    MimicMovement = "Isaac'ın hareketlerini {value} saniye gecikme ile taklit eder",
    CantShoot = "Isaac ateş atamaz",
    PlayerContactDamage = "Isaac saniyede {value} dokunma hasarı verir",
    DamageToAllEnemies = "Tüm düşmanlara {value} hasar verir",

    LeftEye = "Sol göz için:",
    RightEye = "Sağ göz için:",
    RoomEffect = "{{Timer}} Oda için:",
    TimedEffect = "{{Timer}} {value} saniye için:",
    OnUseEffect = "Kullanıldığında:",
    HeldEffect = "Elde iken:",
    MaxLuck = "{{Luck}} Maks.({max}%) {value} şansında",
    SingleUseInfo = "{{Warning}} TEK KULLANIM {{Warning}}",
    NoEffect = "Efekt yok",
    FullMapping = {
        BaseDesc = "{{Timer}} Kat için tam harita efekti {exception}",
        Exception = "({{SuperSecretRoom}} Süper Gizli Oda hariç)"
    }
}
