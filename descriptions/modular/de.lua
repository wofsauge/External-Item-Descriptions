-- This file contains text elements that are used for the modular description system.
local languageCode = "de"
EID.descriptions[languageCode].AdditionalInformations = {}

-- List of description IDs to ignore for fully automated descriptions
EID.descriptions[languageCode].IgnoreFullyAutomatedDescriptions = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Tränen",
    Tears = "{value} Tränen",
    TearHeight = "{value} Tränenhöhe",
    TearSizeMultiplier = "{value} Tränen Größe",
    TearSize = "{value} Tränen Größe",
    TearDelayMultiplier = "{value} Tränenverzögerung",
    TearDelay = "{value} Tränenverzögerung",
    FireRateMultiplier = "{value} Feuerrate",
    FireRate = "{value} Feuerrate",
    DamageMultiplier = "{value} Schaden",
    Damage = "{value} Schaden",
	DamageTemp = "{value} Schaden (vorübergehend)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Bomben-Schaden",
    Speed = "{value} Geschwindigkeit",
    RangeMultiplier = "{value} Reichweite",
    Range = "{value} Reichweite",
    Luck = "{value} Glück",
    ShotSpeedMultiplier = "{value} Schussgeschwindigkeit",
    ShotSpeed = "{value} Schussgeschwindigkeit",
    Life = "{value} Leben",
    SizeUp = "Werde größer",
    SizeDown = "Werde kleiner",
    Flight = "Flug",
	Invincibility = "Unverwundbarkeit",
	RandomStatUp = "↑ Erhöht {value} zufällig{plural_e_sing_en} Wert{plural_e}",
	RandomStatDown = "↓ Decreases {value} zufällig{plural_e_sing_en} Werte{plural_e}",

    -- Health related
    RedHeart = "{value} Herz{plural_en}",
    SoulHeart = "{value} Seelenherz{plural_en}",
    BlackHeart = "{value} schwarz{plural_e_sing_es} Herz{plural_en}",
    BoneHeart = "{value} Knochenherz{plural_en}",
    EternalHeart = "{value} ewig{plural_e_sing_es} Herz{plural_en}",
    GoldenHeart = "{value} golden{plural_e_sing_es} Herz{plural_en}",
	RottenHeart = "{value} faul{plural_e_sing_es} Herz{plural_en}",
	BrokenHeart = "{value} kaputt{plural_e_sing_es} Herz{plural_en}",
    EmptyHeart = "{value} leer{plural_e_sing_es} Herz{plural_en}",
    FullHealth = "Volle Gesundheit",
    HealingRed = "Heilt {value} Herz{plural_en}",
	CoinHeart = "{value} Münz-Herz{plural_en}",
	EmptyCoinHeart = "{value} leer{plural_e_sing_es} Münz-Herz{plural_en}",
	HealingCoin = "Heilt {value} Münz-Herz{plural_en}",

    -- Room chances
    AngelDevilChance = "{value}% Teufels-/Engelsraum Chance",
    DevilChance = "{value}% Teufelsraum Chance",
    AngelChance = "{value}% Engelsraum Chance",
    PlanetariumChance = "{value}% Planetarium Chance",

    -- Pickups / Spawns
    Coin = "{value} Münz{plural_e_sing_en}",
    Bomb = "{value} Bomb{plural_e_sing_en}",
    Key = "{value} Schlüssel",
    CoinBombKey = "{value} {{Coin}} Münz{plural_e_sing_en}, {{Bomb}} Bomb{plural_e_sing_en} and {{Key}} Schlüssel",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Spawnt {value} zufällig{plural_e_sing_es} Pickup",
        RandomTrinket = "Spawnt {value} zufällig{plural_e_sing_es} trinket",
        RandomHeart = "Spawnt {value} zufällig{plural_e_sing_es} Herz{plural_en}",
    	RedHeart = "Spawnt {value} Red Herz{plural_en}",
    	SoulHeart = "Spawnt {value} Seelenherz{plural_en}",
    	BlackHeart = "Spawnt {value} schwarz{plural_e_sing_es} Herz{plural_en}",
    	BoneHeart = "Spawnt {value} Knochenherz{plural_en}",
    	Bomb = "Spawnt {value} Bomb{plural_e_sing_en}",
    	Key = "Spawnt {value} Schlüssel",
        Coin = "Spawnt {value} Münz{plural_e_sing_en}",
        RandomCoin = "Spawnt {value} zufällige Münz{plural_e_sing_en}",
        Card = "Spawnt {value} Kart{plural_e_sing_en}",
        Pill = "Spawnt {value} Pill{plural_e_sing_en}",
        Rune = "Spawnt {value} Run{plural_e_sing_en}",
        Battery = "Spawnt {value} Batteri{plural_en}",
        BlueFly = "Spawnt {value} blaue Fliege{plural_n}",
        BlueSpider = "Spawnt {value} blaue Spinne{plural_n}",
    },
	-- Permanent Tear Effects
    TearEffect = {
		Homing = "Zielsuchende Tränen",
		Spectral = "Spektrale Tränen",
		Piercing = "Durchdringende Tränen",
		Poison = "{{Poison}} Giftige Tränen",
	},
    -- Familiars
    FlyOrbital = "{value} Orbital Fliege{plural_n}",
    Orbital = "Orbital",
    BlockProjectiles = "Blockiert feindliche Projektile",
    DamagePerTear = "Verursacht {value} Schaden pro Träne",
    DamagePerShot = "Verursacht {value} Schaden pro Schuss",
    DamagePerSecond = "Verursacht {value} Schaden pro Sekunde",
    ContactDamagePerSecond = "Verursacht {value} Kontaktschaden pro Sekunde",
	MimicMovement = "Immitiert Isaac's Bewegungen mit {value} Sekunden Verzögerung",
	-- Player
	CantShoot = "Isaac kann nicht schießen",
	PlayerContactDamage = "Isaac verursacht {value} Kontaktschaden pro Sekunde",
    DamageToAllEnemies = "Verursacht {value} Schaden für alle Gegner",
	-- Misc
	LeftEye = "Erhalte für das linke Auge:",
	RightEye = "Erhalte für das rechte Auge:",
	RoomEffect = "{{Timer}} Erhalte für den Raum:",
	TimedEffect = "{{Timer}} Erhalte für {value} Sekunden:",
	OnUseEffect = "Bei Benutzung:",
	HeldEffect = "Während gehalten:",
	MaxLuck = "{{Luck}} Max.({max}%) bei {value} Glück",
	--MaxLuck = "{{Luck}} {max}% chance at {value} luck",  -- old formatting
	SingleUseInfo = "{{Warning}} Einmalgebrauch {{Warning}}",
	NoEffect = "Kein Effekt",
	FullMapping = {
		BaseDesc = "{{Timer}} Volle Kartenaufdeckung für das Stockwerk {exception}",
		Exception = "(außer {{SuperSecretRoom}} Supergeheimraum)"
	}
}

