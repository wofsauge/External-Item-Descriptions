-- This file contains text elements that are used for the modular description system.
local languageCode = "en_us"
EID.descriptions[languageCode].AdditionalInformations = {}

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Tears multiplier",
    Tears = "{value} Tears",
    TearHeight = "{value} Tear Height",
    TearSizeMultiplier = "{value} Tear size",
    TearSize = "{value} Tear size",
    TearDelayMultiplier = "{value} Tear Delay multiplier",
    TearDelay = "{value} Tear Delay",
    FireRateMultiplier = "{value} Fire rate multiplier",
    FireRate = "{value} Fire rate",
    DamageMultiplier = "{value} Damage multiplier",
    Damage = "{value} Damage",
	DamageTemp = "{value} Damage (temporary)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Bomb Damage",
    Speed = "{value} Speed",
    RangeMultiplier = "{value} Range multiplier",
    Range = "{value} Range",
    Luck = "{value} Luck",
    ShotSpeedMultiplier = "{value} Shot speed multiplier",
    ShotSpeed = "{value} Shot speed",
    Life = "{value} Life",
    SizeUp = "Size up",
    SizeDown = "Size down",
    Flight = "Flight",
	Invincibility = "Invincibility",
	RandomStatUp = "↑ Increases {value} random stat{pluralize}",
	RandomStatDown = "↓ Decreases {value} random stat{pluralize}",

    -- Health related
    RedHeart = "{value} Health",
    SoulHeart = "{value} Soul Heart{pluralize}",
    BlackHeart = "{value} Black Heart{pluralize}",
    BoneHeart = "{value} Bone Heart{pluralize}",
    EternalHeart = "{value} Eternal Heart{pluralize}",
    GoldenHeart = "{value} Golden Heart{pluralize}",
	RottenHeart = "{value} Rotten Heart{pluralize}",
	BrokenHeart = "{value} Broken Heart{pluralize}",
    EmptyHeart = "{value} Empty Heart container{pluralize}",
    FullHealth = "Full health",
    HealingRed = "Heals {value} heart{pluralize}",
	CoinHeart = "{value} Coin Heart{pluralize}",
	EmptyCoinHeart = "{value} Empty Coin Heart{pluralize}",
	HealingCoin = "Heals {value} coin{pluralize}",

    -- Room chances
    AngelDevilChance = "{value}% Devil/Angel Room chance",
    DevilChance = "{value}% Devil Room chance",
    AngelChance = "{value}% Angel Room chance",
    PlanetariumChance = "{value}% Planetarium chance",

    -- Pickups / Spawns
    Coin = "{value} Coin{pluralize}",
    Bomb = "{value} Bomb{pluralize}",
    Key = "{value} Key{pluralize}",
    CoinBombKey = "{value} {{Coin}} coin{pluralize}, {{Bomb}} bomb{pluralize} and {{Key}} key{pluralize}",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Spawns {value} random pickup{pluralize}",
        RandomTrinket = "Spawns {value} random trinket{pluralize}",
        RandomHeart = "Spawns {value} random heart{pluralize}",
    	RedHeart = "Spawns {value} Red Heart{pluralize}",
    	SoulHeart = "Spawns {value} Soul Heart{pluralize}",
    	BlackHeart = "Spawns {value} Black Heart{pluralize}",
    	BoneHeart = "Spawns {value} Bone Heart{pluralize}",
    	Bomb = "Spawns {value} bomb{pluralize}",
    	Key = "Spawns {value} key{pluralize}",
        Coin = "Spawns {value} coin{pluralize}",
        RandomCoin = "Spawns {value} random coin{pluralize}",
        Card = "Spawns {value} card{pluralize}",
        Pill = "Spawns {value} pill{pluralize}",
        Rune = "Spawns {value} rune{pluralize}",
        Battery = "Spawns {value} batter{pluralize_y}",
        BlueFly = "Spawns {value} blue fl{pluralize_y}",
        BlueSpider = "Spawns {value} blue spider{pluralize}",
    },
	-- Permanent Tear Effects
    TearEffect = {
		Homing = "Homing tears",
		Spectral = "Spectral tears",
		Piercing = "Piercing tears",
		Poison = "{{Poison}} Poison tears",
	},
    -- Familiars
    FlyOrbital = "{value} Fly orbital{pluralize}",
    Orbital = "Orbital",
    BlockProjectiles = "Blocks enemy projectiles",
    DamagePerTear = "Deals {value} damage per tear",
    DamagePerShot = "Deals {value} damage per shot",
    DamagePerSecond = "Deals {value} damage per second",
    ContactDamagePerSecond = "Deals {value} contact damage per second",
	MimicMovement = "Mimics Isaac's movement on a {value} second delay",
	-- Player
	CantShoot = "Isaac can't shoot",
	PlayerContactDamage = "Isaac deals {value} contact damage per second",
    DamageToAllEnemies = "Deals {value} damage to all enemies",
	-- Misc
	LeftEye = "Receive for left eye:",
	RightEye = "Receive for right eye:",
	RoomEffect = "{{Timer}} Receive for the room:",
	TimedEffect = "{{Timer}} Receive for {value} seconds:",
	OnUseEffect = "Upon use:",
	HeldEffect = "While held:",
	MaxLuck = "{{Luck}} Max.({max}%) at {value} luck",
	--MaxLuck = "{{Luck}} {max}% chance at {value} luck",  -- old formatting
	SingleUseInfo = "{{Warning}} SINGLE USE {{Warning}}",
	NoEffect = "No effect",
	FullMapping = {
		BaseDesc = "{{Timer}} Full mapping effect for the floor {exception}",
		Exception = "(except {{SuperSecretRoom}} Super Secret Room)"
	}
}
